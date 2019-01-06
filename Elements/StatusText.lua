---------------------------------------------------------------------------------------------------
-- Element: Status Text
---------------------------------------------------------------------------------------------------
local ADDON_NAME, Addon = ...

---------------------------------------------------------------------------------------------------
-- Imported functions and constants
---------------------------------------------------------------------------------------------------

-- Lua APIs
local _G, gsub, ceil, format, string = _G, gsub, ceil, format, string

-- WoW APIs
local UnitIsPlayer, UnitPlayerControlled, UnitExists = UnitIsPlayer, UnitPlayerControlled, UnitExists
local UnitName, UnitGetTotalAbsorbs, UnitClassification = UnitName, UnitGetTotalAbsorbs, UnitClassification
local UNIT_LEVEL_TEMPLATE = UNIT_LEVEL_TEMPLATE
local GetGuildInfo = GetGuildInfo

-- ThreatPlates APIs
local TidyPlatesThreat = TidyPlatesThreat
local PlatesByUnit = Addon.PlatesByUnit
local SubscribeEvent, PublishEvent,  UnsubscribeEvent = Addon.EventService.Subscribe, Addon.EventService.Publish, Addon.EventService.Unsubscribe
local SetFontJustify = Addon.Font.SetJustify
local RGB = Addon.RGB
local RGB_P = Addon.RGB_P

local COLOR_ROLE = RGB(255, 255, 255, .7)
local COLOR_GUILD = RGB(178, 178, 229, .7)

---------------------------------------------------------------------------------------------------
-- Local variables
---------------------------------------------------------------------------------------------------
local UnitSubtitles = {}
local ScannerName = "ThreatPlates_Tooltip_Subtext"
local TooltipScanner = CreateFrame( "GameTooltip", ScannerName , nil, "GameTooltipTemplate" ) -- Tooltip name cannot be nil
TooltipScanner:SetOwner( WorldFrame, "ANCHOR_NONE" )

---------------------------------------------------------------------------------------------------
-- Cached configuration settings
---------------------------------------------------------------------------------------------------
local Settings, SettingsStatusText
local SettingsMode = {
  HEALTHBAR = {},
  NAME = {}
}
local ShowHealth, ShowAbsorbs
local StatusTextFunction = {
  HEALTHBAR = {},
  NAME = {}
}

---------------------------------------------------------------------------------------------------
-- Correct localization of numbers: Western or East Asian Nations (CJK)
---------------------------------------------------------------------------------------------------

local function TruncateWestern(value)
  if not TidyPlatesThreat.db.profile.text.truncate then
    return value
  end

  if value >= 1e6 then
    return format("%.1fm", value / 1e6)
  elseif value >= 1e4 then
    return format("%.1fk", value / 1e3)
  else
    return value
  end
end

local TruncateEastAsian = TruncateWestern
local Truncate = TruncateWestern

local MAP_LOCALE_TO_UNIT_SYMBOL = {
  koKR = { -- Korrean
    Unit_1K = "천",
    Unit_10K = "만",
    Unit_1B = "억",
  },
  zhCN = { -- Simplified Chinese
    Unit_1K = "千",
    Unit_10K = "万",
    Unit_1B = "亿",
  },
  zhTW = { -- Traditional Chinese
    Unit_1K = "千",
    Unit_10K = "萬",
    Unit_1B = "億",
  },
}

local locale = GetLocale()
if MAP_LOCALE_TO_UNIT_SYMBOL[locale] then
  local Format_Unit_1K = "%.1f" .. MAP_LOCALE_TO_UNIT_SYMBOL[locale].Unit_1K
  local Format_Unit_10K = "%.1f" .. MAP_LOCALE_TO_UNIT_SYMBOL[locale].Unit_10K
  local Format_Unit_1B = "%.1f" .. MAP_LOCALE_TO_UNIT_SYMBOL[locale].Unit_1B

  TruncateEastAsian = function(value)
    if not TidyPlatesThreat.db.profile.text.truncate then
      return value
    end

    if value >= 1e8 then
      return format(Format_Unit_1B, value / 1e8)
    elseif value >= 1e4 then
      return format(Format_Unit_10K, value / 1e4)
    elseif value >= 1e3 then
      return format(Format_Unit_1K, value / 1e3)
    else
      return value
    end
  end
end

---------------------------------------------------------------------------------------------------
-- Status text generating functions
---------------------------------------------------------------------------------------------------

local function GetLevelColor(unit)
  local level_color = unit.LevelColor
  level_color.a = .70
  return level_color
end

local function GetGuildColor(unit)
  return COLOR_GUILD
end

local function GetRoleColor(unit)
  return COLOR_ROLE
end

local function GetUnitSubtitle(unit)
  -- Bypass caching while in an instance
  --if inInstance or (not UnitExists(unitid)) then return end
  if UnitIsPlayer(unit.unitid) or UnitPlayerControlled(unit.unitid) or not UnitExists(unit.unitid) then return end

  --local guid = UnitGUID(unit.unitid)
  local name = unit.name
  local subTitle = UnitSubtitles[name]

  if not subTitle then
    TooltipScanner:ClearLines()
    TooltipScanner:SetUnit(unit.unitid)

    local TooltipTextLeft1 = _G[ScannerName.."TextLeft1"]
    local TooltipTextLeft2 = _G[ScannerName.."TextLeft2"]
    --local TooltipTextLeft3 = _G[ScannerName.."TextLeft3"]
    --local TooltipTextLeft4 = _G[ScannerName.."TextLeft4"]

    name = TooltipTextLeft1:GetText()

    if name then name = gsub( gsub( (name), "|c........", "" ), "|r", "" ) else return end	-- Strip color escape sequences: "|c"
    if name ~= UnitName(unit.unitid) then return end	-- Avoid caching information for the wrong unit

    -- Tooltip Format Priority:  Faction, Description, Level
    local toolTipText = TooltipTextLeft2:GetText() or ""

    if string.match(toolTipText, UNIT_LEVEL_TEMPLATE) then
      subTitle = ""
    else
      subTitle = toolTipText
    end

    UnitSubtitles[name] = subTitle
  end

  -- Maintaining a cache allows us to avoid the hit
  if subTitle == "" then
    return nil, GetRoleColor
  else
    return subTitle, GetRoleColor
  end
end

-- Level
local function GetLevelDescription(unit)
  local classification = UnitClassification(unit.unitid)
  local description

  if classification == "worldboss" then
    description = "World Boss"
  else
    if unit.level > 0 then
      description = "Level " .. unit.level
    else
      description = "Level ??"
    end

    if unit.isRare then
      if unit.isElite then
        description = description .. " (Rare Elite)"
      else
        description = description .. " (Rare)"
      end
    elseif unit.isElite then
      description = description .. " (Elite)"
    end
  end

  return description, GetLevelColor
end

-- return ceil(100 * (unit.health / unit.healthmax)) .. "%", GetColorByHealthDeficit(unit)
local function TextHealthPercentColored(unit)
  local text_health, text_absorbs, color = "", "", GetRoleColor

  local absorbs_amount = UnitGetTotalAbsorbs(unit.unitid) or 0
  if ShowAbsorbs and absorbs_amount > 0 then
    if Settings.AbsorbsAmount then
      if Settings.AbsorbsShorten then
        text_absorbs = Truncate(absorbs_amount)
      else
        text_absorbs = absorbs_amount
      end
    end

    if Settings.AbsorbsPercentage then
      local absorbs_percentage = ceil(100 * absorbs_amount / unit.healthmax) .. "%"

      if text_absorbs == "" then
        text_absorbs = absorbs_percentage
      else
        text_absorbs = text_absorbs .. " - " .. absorbs_percentage
      end
    end

    if text_absorbs ~= "" then
      text_absorbs = "[" .. text_absorbs .. "]"
    end
  end

  if ShowHealth and (Settings.full or unit.health ~= unit.healthmax) then
    local HpPct, HpAmt, HpMax = "", "", ""

    if Settings.amount then
      if Settings.deficit and unit.health ~= unit.healthmax then
        HpAmt = "-" .. Truncate(unit.healthmax - unit.health)
      else
        HpAmt = Truncate(unit.health)
      end

      if Settings.max then
        if HpAmt ~= "" then
          HpMax = " / " .. Truncate(unit.healthmax)
        else
          HpMax = Truncate(unit.healthmax)
        end
      end
    end

    if Settings.percent then
      -- Blizzard calculation:
      -- local perc = math.ceil(100 * (UnitHealth(frame.displayedUnit)/UnitHealthMax(frame.displayedUnit)));

      local perc = ceil(100 * (unit.health / unit.healthmax))
      -- old: floor(100*(unit.health / unit.healthmax))

      if HpMax ~= "" or HpAmt ~= "" then
        HpPct = " - "..perc.."%"
      else
        HpPct = perc.."%"
      end
    end

    text_health = HpAmt .. HpMax .. HpPct
    color = Addon.GetColorByHealthDeficit
  end

  if text_health and text_absorbs then
    return text_health .. " " .. text_absorbs, color
  else
    return text_health .. text_absorbs, color
  end
end

-- Role, Guild or Level
local function TextRoleGuildLevel(unit)
  local description, color

  if unit.type == "NPC" then
    description = GetUnitSubtitle(unit)
  elseif unit.type == "PLAYER" then
    description = GetGuildInfo(unit.unitid)
    color = GetGuildColor
  end

  if not description then --  and unit.reaction ~= "FRIENDLY" then
    description, color = GetLevelDescription(unit)
  end

  return description, color
end

local function TextRoleGuild(unit)
  local description, color

  if unit.type == "NPC" then
    description = GetUnitSubtitle(unit)
  elseif unit.type == "PLAYER" then
    description = GetGuildInfo(unit.unitid)
    color = GetGuildColor
  end

  return description, color
end

-- NPC Role
local function TextNPCRole(unit)
  local description, color

  if unit.type == "NPC" then
    description = GetUnitSubtitle(unit)
  end

  return description, color
end

-- Guild, Role, Level, Health
local function TextAll(unit)
  if (unit.health < unit.healthmax) then
    return TextHealthPercentColored(unit)
  else
    return TextRoleGuildLevel(unit)
  end
end

local STATUS_TEXT_REFERENCE =
{
  -- NONE , nil for this
  HEALTH = TextHealthPercentColored,
  ROLE = TextNPCRole,
  ROLE_GUILD = TextRoleGuild,
  ROLE_GUILD_LEVEL = TextRoleGuildLevel,
  LEVEL = GetLevelDescription,
  ALL = TextAll,
}

---------------------------------------------------------------------------------------------------
--
---------------------------------------------------------------------------------------------------

local function SetCustomText(tp_frame)
  local unit = tp_frame.unit

  local status_text, color

  local status_text_func = StatusTextFunction[tp_frame.PlateStyle][unit.reaction]
  if status_text_func then
    local subtext, color_func = status_text_func(unit)
    if subtext then
      status_text = subtext

      local db = SettingsMode[tp_frame.PlateStyle]
      if db.SubtextColorUseHeadline then
        color = tp_frame:GetNameColor()
      elseif db.SubtextColorUseSpecific then
        color = color_func(unit)
      else
        color = db.SubtextColor
      end
    end
  end

  return status_text, color
end


---------------------------------------------------------------------------------------------------
-- Element code
---------------------------------------------------------------------------------------------------
local Element = Addon.Elements.NewElement("StatusText")

---------------------------------------------------------------------------------------------------
-- Core element code
---------------------------------------------------------------------------------------------------

-- Called in processing event: NAME_PLATE_CREATED
function Element.Created(tp_frame)
  local status_text = tp_frame.visual.textframe:CreateFontString(nil, "ARTWORK", -1)

  tp_frame.visual.StatusText = status_text
end

-- Called in processing event: NAME_PLATE_UNIT_ADDED
function Element.UnitAdded(tp_frame)
  local status_text = tp_frame.visual.StatusText

  local text, color = SetCustomText(tp_frame)
  status_text:SetText(text)
  if text then
    status_text:SetTextColor(color.r, color.g, color.b, color.a)
  end
end

-- Called in processing event: NAME_PLATE_UNIT_REMOVED
--function Element.UnitRemoved(tp_frame)
--end

---- Called in processing event: UpdateStyle in Nameplate.lua
function Element.UpdateStyle(tp_frame, style)
  local status_text = tp_frame.visual.StatusText
  local style = style.customtext

  -- At least font must be set as otherwise it results in a Lua error when UnitAdded with SetText is called
  status_text:SetFont(style.typeface, style.size, style.flags)

  if style.show then
    SetFontJustify(status_text, style.align, style.vertical)

    if style.shadow then
      status_text:SetShadowColor(0,0,0, 1)
      status_text:SetShadowOffset(1, -1)
    else
      status_text:SetShadowColor(0,0,0,0)
    end

    status_text:SetSize(style.width, style.height)
    status_text:ClearAllPoints()
    status_text:SetPoint(style.anchor, tp_frame, style.anchor, style.x, style.y)

    status_text:Show()
  else
    status_text:Hide()
  end
end

-- Text and color may change
local function StatusTextUpdateByUnit(unitid)
  local tp_frame = PlatesByUnit[unitid]
  if tp_frame and tp_frame.Active then
    Element.UnitAdded(tp_frame)
  end
end

local function HealthUpdate(unitid)
  local tp_frame = PlatesByUnit[unitid]
  if tp_frame and tp_frame.Active then
    local status_text_func = StatusTextFunction[tp_frame.PlateStyle][tp_frame.unit.reaction]
    if status_text_func == TextHealthPercentColored or status_text_func == TextAll then
      Element.UnitAdded(tp_frame)
    end
  end
end

local function NameColorUpdate(tp_frame, color)
  if SettingsMode[tp_frame.PlateStyle].SubtextColorUseHeadline then
    tp_frame.visual.StatusText:SetTextColor(color.r, color.g, color.b, color.a)
  end
end

function Element.UpdateSettings()
  Settings = TidyPlatesThreat.db.profile.text
  SettingsStatusText = TidyPlatesThreat.db.profile.StatusText

  Truncate = (Settings.LocalizedUnitSymbol and TruncateEastAsian) or TruncateWestern

  ShowAbsorbs = Settings.AbsorbsAmount or Settings.AbsorbsPercentage
  ShowHealth = Settings.amount or Settings.percent

  StatusTextFunction["HEALTHBAR"]["FRIENDLY"] = STATUS_TEXT_REFERENCE[SettingsStatusText.HealthbarMode.FriendlySubtext]
  StatusTextFunction["HEALTHBAR"]["HOSTILE"] = STATUS_TEXT_REFERENCE[SettingsStatusText.HealthbarMode.EnemySubtext]
  StatusTextFunction["HEALTHBAR"]["NEUTRAL"] = StatusTextFunction["HEALTHBAR"]["HOSTILE"]

  StatusTextFunction["NAME"]["FRIENDLY"] = STATUS_TEXT_REFERENCE[SettingsStatusText.NameMode.FriendlySubtext]
  StatusTextFunction["NAME"]["HOSTILE"] = STATUS_TEXT_REFERENCE[SettingsStatusText.NameMode.EnemySubtext]
  StatusTextFunction["NAME"]["NEUTRAL"] = StatusTextFunction["NAME"]["HOSTILE"]

  SettingsMode["HEALTHBAR"] = SettingsStatusText.HealthbarMode
  SettingsMode["NAME"] = SettingsStatusText.NameMode

  if SettingsStatusText.HealthbarMode.SubtextColorUseHeadline or SettingsStatusText.NameMode.SubtextColorUseHeadline then
    SubscribeEvent(Element, "NameColorUpdate", NameColorUpdate)
  else
    UnsubscribeEvent(Element, "NameColorUpdate", NameColorUpdate)
  end

  if SettingsStatusText.HealthbarMode.FriendlySubtext == "HEALTH" or SettingsStatusText.HealthbarMode.FriendlySubtext == "ALL" or
    SettingsStatusText.HealthbarMode.EnemySubtext == "HEALTH" or SettingsStatusText.HealthbarMode.EnemySubtext == "ALL" or
    SettingsStatusText.NameMode.FriendlySubtext == "HEALTH" or SettingsStatusText.NameMode.FriendlySubtext == "ALL" or
    SettingsStatusText.NameMode.EnemySubtext == "HEALTH" or SettingsStatusText.NameMode.EnemySubtext == "ALL" then
    SubscribeEvent(Element, "UNIT_HEALTH", HealthUpdate)
    SubscribeEvent(Element, "UNIT_MAXHEALTH", HealthUpdate)
    SubscribeEvent(Element, "UNIT_ABSORB_AMOUNT_CHANGED", HealthUpdate)

  else
    UnsubscribeEvent(Element, "UNIT_HEALTH", HealthUpdate)
    UnsubscribeEvent(Element, "UNIT_MAXHEALTH", HealthUpdate)
    UnsubscribeEvent(Element, "UNIT_ABSORB_AMOUNT_CHANGED", HealthUpdate)
  end

end

--local function GuildRosterUpdate(local_change)
--  print ("GuildRosterUpdate: ", local_change)
--end

SubscribeEvent(Element, "UNIT_NAME_UPDATE", StatusTextUpdateByUnit)
SubscribeEvent(Element, "UNIT_LEVEL", StatusTextUpdateByUnit)
-- For now: ignore Guild Roster events
--SubscribeEvent(Element, "GUILD_ROSTER_UPDATE", StatusTextUpdateByUnit)
