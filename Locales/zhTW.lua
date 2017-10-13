﻿local L = LibStub("AceLocale-3.0"):NewLocale("TidyPlatesThreat", "zhTW", false)
if not L then return end

L = L or {}
L["  <no option>        Displays options dialog"] = "  <沒有選項>        顯示選項視窗"
L["  8.4-design         Changes default settings to new look and feel (introduced with 8.4)"] = "  8.4-design        將預設的設定更改成新的外觀和風格 (8.4版的新設計)"
L["  classic-design     Reverts default settings back to look and feel before 8.4"] = "  classic-design    將預設的設定還原成新8.4版之前的外觀和風格"
L["  help               Prints this help message"] = "  help              顯示說明訊息"
L["  new-defaults       Changes default settings to new look and feel (introduced with 8.4)"] = "  new-defaults      將預設的設定更改成新的外觀和風格 (8.4版的新設計)"
L["  old-defaults       Reverts default settings back to look and feel before 8.4"] = "  old-defaults      將預設的設定還原成新8.4版之前的外觀和風格"
L["  update-profiles    Migrates deprecated settings in your configuration"] = "  update-profiles   更新設定檔內已移除的設定選項"
L[" options by typing: /tptp"] = " 的設定選項請輸入： /tptp"
L[" role."] = " 角色。"
L[" to DPS."] = " 為傷害輸出。"
L[" to tanking."] = " 為坦克。"
L[ [=[

Feel free to email me at |cff00ff00threatplates@gmail.com|r

--

Blacksalsify

(Original author: Suicidal Katt - |cff00ff00Shamtasticle@gmail.com|r)]=] ] = [=[

隨時都可以 Email 給我 |cff00ff00threatplates@gmail.com|r

--

Blacksalsify

(原作者: Suicidal Katt - |cff00ff00Shamtasticle@gmail.com|r)]=]
L[". You have installed an older or incompatible version of TidyPlates: "] = "。目前安裝的 TidyPlates 是舊的或不相容的版本："
L[ [=[:
---------------------------------------
|cff89F559Threat Plates|r v8.4 introduces a new default look and feel (currently shown). Do you want to switch to this new look and feel?

None of your custom settings will be changed. You can always use '/tptp classic-design' or '/tptp 8.4-design' to revert your decision later on.]=] ] = [=[:
---------------------------------------
|cff89F559威力血條|r Threat Plates v8.4 使用全新的外觀和風格 (正是目前所顯示的)。是否要切換成這種外觀和風格，做為新的預設血條?

所有自訂的設定都不會被更改，若改變心意了，之後也都可以輸入 '/tptp classic-design' 或 '/tptp 8.4-design' 來切換。]=]
L[ [=[:
---------------------------------------
|cff89F559Threat Plates|r v8.4 introduces a new default look and feel (currently shown). Do you want to switch to this new look and feel?

You can revert your decision by changing the default look and feel again in the options dialog (under Nameplate Settings - Healthbar View - Default Settings).

Note: Some of your custom settings may get overwritten if you switch back and forth.]=] ] = [=[:
---------------------------------------
|cff89F559威力血條|r  Threat Plates v8.4 使用全新的外觀和風格 (正是目前所顯示的)。是否要切換成這種外觀和風格，做為新的預設血條?

若改變心意了，可以在選項視窗中更改回來 (從血條設定 > 血條檢視 > 預設設定)。

請注意：切換時某些自訂的設定可能會恢復為預設值。]=]
L[ [=[:
---------------------------------------
|cff89F559Threat Plates|r v8.4 introduces a new default look and feel (which is currently shown). Do you want to switch to this look and feel as new default?

You can change this setting anytime in the options dialog (under Nameplate Settings - Healthbar View - Default Settings).

Note: Some of your custom settings will change to their default value if you switch back and forth.]=] ] = [=[:
---------------------------------------
|cff89F559威力血條|r  Threat Plates v8.4 使用全新的外觀和風格 (正是目前所顯示的)。是否要切換成這種外觀和風格，做為新的預設血條?

任何時候都可以在選項視窗中更改設定 (從血條設定 > 血條檢視 > 預設設定)。

請注意：切換時某些自訂的設定可能會恢復為預設值。]=]
L[ [=[:
---------------------------------------
Would you like to
set your theme to |cff89F559Threat Plates|r?

Clicking '|cff00ff00Yes|r' will set you to Threat Plates & reload UI.
 Clicking '|cffff0000No|r' will open the Tidy Plates options.]=] ] = [=[:
---------------------------------------
是否要將血條外觀主題設定成 |cff89F559Threat Plates|r 威力血條?

按 '|cff00ff00是|r' 會設定成威力血條，並且重新載入介面。按 '|cffff0000否|r' 會開啟 Tidy血條的設定選項。]=]
L[ [=[:
----------
Would you like to
set your theme to |cff89F559Threat Plates|r?

Clicking '|cff00ff00Yes|r' will set you to Threat Plates & reload UI.
 Clicking '|cffff0000No|r' will open the Tidy Plates options.]=] ] = [=[:
----------
是否要將血條外觀主題設定成 |cff89F559Threat Plates|r 威力血條?

按 '|cff00ff00是|r' 會設定成威力血條，並且重新載入介面。按 '|cffff0000否|r' 會開啟 Tidy血條的設定選項。]=]
L[ [=[:
---------------------------------------
Would you like to
set your theme to |cff89F559Threat Plates|r?

Clicking '|cff00ff00Yes|r' will set you to Threat Plates & reload UI.
Clicking '|cffff0000No|r' will open the Tidy Plates options.]=] ] = [=[:
---------------------------------------
是否要將血條外觀主題設定成 |cff89F559Threat Plates|r 威力血條?

按 '|cff00ff00是|r' 會設定成威力血條，並且重新載入介面。
按 '|cffff0000否|r' 會開啟 Tidy血條的設定選項。]=]
L[ [=[:
---------------------------------------
Would you like to
set your theme to |cff89F559Threat Plates|r?

Clicking '|cff00ff00Yes|r' will set you to Threat Plates.
Clicking '|cffff0000No|r' will open the Tidy Plates options.]=] ] = [=[:
---------------------------------------
是否要將血條外觀主題設定成 |cff89F559Threat Plates|r 威力血條?

按 '|cff00ff00是|r' 會設定成威力血條。
按 '|cffff0000否|r' 會開啟 Tidy血條的設定選項。]=]
L["|cff00ff00High Threat|r"] = "|cff00ff00高仇恨|r"
L["|cff00ff00Low Threat|r"] = "|cff00ff00低仇恨|r"
L["|cff00ff00Tank|r"] = "|cff00ff00坦克|r"
L["|cff00ff00tanking|r"] = "|cff00ff00坦克|r"
L["|cff0faac8Off-Tank|r"] = "|cff0faac8副坦克|r"
L["|cff89f559 role.|r"] = "|cff89f559 角色。|r"
L["|cff89f559Additional options can be found by typing |r'/tptp'|cff89F559.|r"] = "|cff89f559更多的選項請輸入 |r'/tptp'|cff89F559。|r"
L["|cff89f559Threat Plates:|r Welcome back |cff"] = "|cff89f559威力血條：|r 歡迎回來 |cff"
L["|cff89F559Threat Plates|r: DPS switch detected, you are now in your |cffff0000dpsing / healing|r role."] = "|cff89F559威力血條|r：偵測到切換成 DPS，現在是 |cffff0000輸出 / 治療|r 角色。"
L["|cff89F559Threat Plates|r: Role toggle not supported because automatic role detection is enabled."] = "|cff89F559威力血條|r：不支援切換角色，因為已經啟用自動偵測角色。"
L["|cff89F559Threat Plates|r: Tank switch detected, you are now in your |cff00ff00tanking|r role."] = "|cff89F559威力血條|r：偵測到切換成坦克，現在是 |cffff0000坦克|r 角色。"
L[ [=[|cff89f559Welcome to |rTidy Plates: |cff89f559Threat Plates!
This is your first time using Threat Plates and you are a(n):
|r|cff]=] ] = [=[|cff89f559歡迎使用 |rTidy Plates：|cff89f559Threat Plates!
這是你第一次使用威力血條，你是：
|r|cff]=]
L["|cff89f559You are currently in your "] = "|cff89f559你目前是 "
L["|cffff0000DPS/Healing|r"] = "|cffff0000DPS/治療|r"
L["|cffff0000dpsing / healing|r"] = "|cffff0000輸出 / 治療|r"
L["|cffff0000High Threat|r"] = "|cffff0000高仇恨|r"
L["|cffff0000Low Threat|r"] = "|cffff0000低仇恨|r"
L["|cffffff00Medium Threat|r"] = "|cffffff00中仇恨|r"
L["|cffffffffGeneral Settings|r"] = "|cffffffff一般設定|r"
L["|cffffffffTotem Settings|r"] = "|cffffffff圖騰設定|r"
L["-->>|cff00ff00Tank Plates Enabled|r<<--"] = "-->>|cff00ff00坦克血條已啟用|r<<--"
L["-->>|cffff0000Activate Threat Plates from the Tidy Plates options!|r<<--"] = "-->>|cffff0000請從 Tidy血條的設定選項中選擇威力血條 (Threat Plates) 外觀!|r<<--"
L["-->>|cffff0000DPS Plates Enabled|r<<--"] = "-->>|cffff0000DPS 血條已啟用|r<<--"
L["-->>Nameplate Overlapping is now |cff00ff00ON!|r<<--"] = "-->>重疊血條現在 |cff00ff00開啟!|r<<--"
L["-->>Nameplate Overlapping is now |cffff0000OFF!|r<<--"] = "-->>重疊血條現在 |cff00ff00關閉!|r<<--"
L["-->>Threat Plates verbose is now |cff00ff00ON!|r<<--"] = "-->>威力血條訊息現在 |cff00ff00開啟!|r<<--"
L["-->>Threat Plates verbose is now |cffff0000OFF!|r<<-- shhh!!"] = "-->>威力血條訊息現在 |cff00ff00關閉!|r<<-- 噓!!"
L["A to Z"] = "A 到 Z"
L["About"] = "關於"
--Translation missing
L["Absolut Transparency"] = "Absolut Transparency"
L["Add black outline."] = "加上黑色外框。"
L["Add thick black outline."] = "加上粗的黑色外框。"
L["Additional Adjustments"] = "額外調整"
L["Additionally color the healthbar based on the target mark if the unit is marked."] = "單位有標記圖示時，依據圖示類型另外調整血條顏色。"
L["Additionally color the name based on the target mark if the unit is marked."] = "單位有標記圖示時，依據圖示類型額外調整名字顏色。"
L["Additionally color the nameplate's healthbar or name based on the target mark if the unit is marked."] = "單位有標記圖示時，依據圖示類型額外調整血條或名字顏色。"
L["Adjust Alpha for"] = "調整透明度"
L["Adjust Alpha For"] = "調整透明度"
L["Adjust Color For"] = "調整顏色"
L["Adjust Scale For"] = "調整縮放大小"
L["Adjust Scale for"] = "調整縮放大小"
L["All Auras"] = "所有光環"
L["All Auras (Mine)"] = "所有光環 (我的)"
L["Alpha"] = "透明度"
L["Alpha & Scaling"] = "透明度 & 縮放大小"
L["Alpha by Status"] = "狀態的透明度"
L["Amount Text"] = "數值文字"
L["Amount Text Formatting"] = "數值文字格式"
L["Anchor"] = "對齊"
L["Anchor Point"] = "對齊點"
L["Appearance"] = "外觀"
L["Area"] = "區域"
L["Area Quest"] = "區域任務"
L["Arena"] = "競技場"
L["Arena 1"] = "競技場 1"
L["Arena 2"] = "競技場 2"
L["Arena 3"] = "競技場 3"
L["Arena 4"] = "競技場 4"
L["Arena 5"] = "競技場 5"
L["Arena Number Colors"] = "競技場數字顏色"
L["Arena Orb Colors"] = "競技場圓球顏色"
L["Army of the Dead Ghoul"] = "食屍鬼大軍"
L["Art Options"] = "美術圖案選項"
L["Aura"] = "光環"
L["Aura 2.0"] = "光環 2.0"
L["Background Color"] = "背景顏色"
L["Background Color:"] = "背景顏色"
L["Background Opacity"] = "背景不透明度"
L["Background Texture"] = "背景材質"
--Translation missing
L["Background Transparency"] = "Background Transparency"
L["Bar Border"] = "邊框"
L["Bar Height"] = "高度"
L["Bar Limit"] = "數量限制"
L["Bar Mode"] = "模式"
L["Bar Width"] = "寬度"
L["Base Alpha by Unit"] = "單位類型的基礎透明度"
L["Base Scale by Unit"] = "單位類型的基礎縮放大小"
L["Black List"] = "黑名單"
L["Black List (Mine)"] = "黑名單 (我的)"
L["Blizzard"] = "暴雪"
L["Blizzard Filter Options"] = "暴雪過濾方式選項"
L["Blizzard Nameplates"] = "暴雪名條"
L["Blizzard Nameplates for Friendly Units"] = "暴雪的友方單位名條"
L["Blizzard Target Fading"] = "暴雪非當前目標淡出"
L["Bone Spike"] = "骸骨尖刺"
L["Border Color:"] = "邊框顏色"
L["Border Texture"] = "邊框材質"
--Translation missing
L["Borders"] = "Borders"
--Translation missing
L["Boss Mods"] = "Boss Mods"
L["Bosses"] = "首領"
L["Bottom-to-top"] = "由下到上"
L["By Class"] = "職業"
L["By Custom Color"] = "自訂顏色"
L["By Health"] = "血量"
L["By Reaction"] = "互動關係"
L["Canal Crab"] = "運河蟹"
L["Cancel"] = "取消"
L["Castbar"] = "施法條"
L["Casting Units"] = "正在施法的單位"
L["Change the color depending on the amount of health points the nameplate shows."] = "依據血條所顯示的血量區間變換顏色。"
L["Change the color depending on the reaction of the unit (friendly, hostile, neutral)."] = "依據單位的互動關係 (友善、敵對、中立) 變換顏色。"
--Translation missing
L["Change the scale of nameplates depending on whether a target unit is selected or not. As default, this scale is added to the unit base scale."] = "Change the scale of nameplates depending on whether a target unit is selected or not. As default, this scale is added to the unit base scale."
--Translation missing
L["Change the scale of nameplates in certain situations, overwriting all other settings."] = "Change the scale of nameplates in certain situations, overwriting all other settings."
--Translation missing
L["Change the transparency of nameplates depending on whether a target unit is selected or not. As default, this transparency is added to the unit base transparency."] = "Change the transparency of nameplates depending on whether a target unit is selected or not. As default, this transparency is added to the unit base transparency."
--Translation missing
L["Change the transparency of nameplates in certain situations, overwriting all other settings."] = "Change the transparency of nameplates in certain situations, overwriting all other settings."
L["Changes the default settings to the selected design. Some of your custom settings may get overwritten if you switch back and forth.."] = "將預設值更改成所選擇的外觀設計，切換外觀時有些自訂的設定可能會被取代。"
L["Changing default settings to new look and feel (introduced with 8.4) ..."] = "將預設值更改成新的外觀和風格 (8.4版本新增的) ..."
L["Changing default settings to updated look and feel introduced with 8.4 ..."] = "將預設值更改成 8.4版本新增的最新外觀和風格 ..."
L["Changing these settings will alter the placement of the nameplates, however the mouseover area does not follow. |cffff0000Use with caution!|r"] = "更改這些設定會變動血條的位置，但是滑鼠的感應區域不會跟著變動。|cffff0000請謹慎使用!|r"
L["Class Icons"] = "職業圖示"
L["Clear"] = "清除"
L[ [=[Clear and easy to use nameplate theme for use with TidyPlates.

Current version: ]=] ] = [=[簡單又清楚的 Tidy 血條外觀主題。

目前版本：]=]
L["Color"] = "顏色"
L["Color By Class"] = "職業顏色"
L["Color by Dispel Type"] = "驅散類型顏色"
L["Color by Health"] = "血量顏色"
L["Color by Reaction"] = "互動關係顏色"
L["Color by Target Mark"] = "標記圖示顏色"
L["Color Healthbar By Enemy Class"] = "血條顯示敵方職業顏色"
L["Color Healthbar By Friendly Class"] = "血條顯示友方職業顏色"
L["Color Healthbar by Target Marks in Healthbar View"] = "血條檢視時，血條顯示標記圖示顏色。"
L["Color Name by Target Marks in Headline View"] = "名字檢視時，名字顯示標記圖示顏色。"
L["Coloring"] = "色彩"
L["Colors"] = "顏色"
L["Column Limit"] = "行數限制"
L["Combo Points"] = "連擊點數"
L["Cooldown Spiral"] = "倒數轉圈動畫"
L["Copied!"] = "已複製!"
L["Copy"] = "複製"
L["Creation"] = "獲得順序"
L["Custom"] = "自訂"
L["Custom Alpha"] = "自訂透明度"
L["Custom Color"] = "自訂顏色"
L["Custom Nameplates"] = "自訂血條"
L["Custom No-Target Alpha"] = "自訂沒有目標透明度"
L["Custom No-Target Scale"] = "自訂沒有目標縮放大小"
L["Custom Scale"] = "自訂縮放大小"
L["Custom Target Alpha"] = "自訂當前目標透明度"
L["Custom Target Scale"] = "自訂當前目標縮放大小"
L["Custom Text"] = "自訂文字"
--Translation missing
L["Custom Transparency"] = "Custom Transparency"
L["Custom-Text-specific"] = "特定的自訂文字"
L["Darnavan"] = "達納凡"
L["Debuffs On Friendly Units"] = "友方單位的減益效果"
L["Default Buff Color"] = "預設的增益效果顏色"
L["Default Debuff Color"] = "預設的減益效果顏色"
L["Default Settings"] = "預設的設定"
L["Default Settings (All Profiles)"] = "預設的設定 (所有設定檔)"
L["Deficit Text"] = "損失文字"
L["Define a custom alpha for this nameplate and overwrite any other alpha settings."] = "設定這個血條的自訂透明度，並且取代其他所有的透明度設定。"
L["Define a custom color for this nameplate and overwrite any other color settings."] = "設定這個血條的自訂顏色，並且取代其他所有的顏色設定。"
L["Define a custom scaling for this nameplate and overwrite any other scaling settings."] = "設定這個血條的自訂縮放大小，並且取代其他所有的縮放大小設定。"
--Translation missing
L["Define a custom transparency for this nameplate and overwrite any other transparency settings."] = "Define a custom transparency for this nameplate and overwrite any other transparency settings."
L["Define base alpha settings for various unit types. Only one of these settings is applied to a unit at the same time, i.e., they are mutually exclusive."] = "設定多種單位類型的基礎透明度。一次只會套用一種設定到單位，也就是說，它們不會同時套用。"
L["Define base scale settings for various unit types. Only one of these settings is applied to a unit at the same time, i.e., they are mutually exclusive."] = "設定多種單位類型的基礎縮放大小。一次只會套用一種設定到單位，也就是說，它們不會同時套用。"
L["Define if threat feedback should be shown for various units based on their type or status."] = "設定是否要依據各種單位的類型和狀態來顯示仇恨值的提醒。"
L["Deformed Fanatic"] = "畸形的狂熱者"
L["Determine your role (tank/dps/healing) automatically based on current spec."] = "自動依據當前的專精決定角色類型 (坦克/傷害/治療)。"
L["Disable Custom Alpha"] = "停用自訂透明度"
L["Disable Custom Scale"] = "停用自訂縮放大小"
--Translation missing
L["Disable threat scale for target marked, mouseover or casting units."] = "Disable threat scale for target marked, mouseover or casting units."
--Translation missing
L["Disable threat transparency for target marked, mouseover or casting units."] = "Disable threat transparency for target marked, mouseover or casting units."
L["Disables nameplates (healthbar and name) for the units of this type and only shows an icon (if enabled)."] = "啟用時，停用這種單位類型的名條 (名字和血條)，只顯示圖示。"
L["Disables the custom alpha setting for this nameplate and instead uses your normal alpha settings."] = "停用這個血條專屬的自訂透明度設定，使用一般通用的透明度設定。"
L["Disables the custom scale setting for this nameplate and instead uses your normal scale settings."] = "停用這個血條專屬的自訂縮放大小設定，使用一般通用的縮放大小設定。"
L["Disabling this will turn off all icons for custom nameplates without harming other custom settings per nameplate."] = "停用時，會關閉自訂血條的所有圖示，但是不會影響每個血條的其他自訂設定。"
L["Disconnected Units"] = "離線的單位"
L["Display health amount text."] = "顯示血量數值文字。"
L["Display health percentage text."] = "顯示血量百分比文字。"
L["Display health text on targets with full HP."] = "顯示血量全滿目標的血量文字。"
L["Display Settings"] = "顯示設定"
L["Do not sort auras."] = "不要排序光環。"
L["Don't Switch"] = "不要切換"
L["DPS/Healing"] = "DPS/治療"
L["Drudge Ghoul"] = "苦工食屍鬼"
L["Duration"] = "持續時間"
L["Ebon Gargoyle"] = "黯黑石像鬼"
L["Edge Size"] = "邊緣大小"
L["Elite Border"] = "精英邊框"
L["Elite Icon"] = "精英圖示"
L["Elite Icon Style"] = "精英圖示風格"
L["Empowered Adherent"] = "強化的擁護者"
L["Enable"] = "啟用"
L["Enable Adjustments"] = "啟用調整"
L["Enable Alpha Threat"] = "啟用仇恨值透明度"
L["Enable Arena Widget"] = "啟用競技場套件"
L["Enable Aura Widget 2.0"] = "啟用光環套件 2.0"
L["Enable Blizzard 'On-Target' Fading"] = "啟用暴雪 '非當前目標' 淡出"
--Translation missing
L["Enable Boss Mods Widget"] = "Enable Boss Mods Widget"
L["Enable Class Icons Widget"] = "啟用職業圖示套件"
L["Enable Coloring"] = "啟用顏色"
L["Enable Combo Points Widget"] = "啟用連擊點數套件"
L["Enable Custom Alpha"] = "啟用自訂透明度"
L["Enable Custom Color"] = "啟用自訂顏色"
L["Enable Custom Colors"] = "啟用自訂顏色"
L["Enable Custom Scale"] = "啟用自訂縮放大小"
L["Enable Enemy"] = "啟用敵方"
L["Enable Friendly"] = "啟用友方"
L["Enable Friends"] = "啟用好友"
L["Enable Guild Members"] = "啟用公會成員"
L["Enable Headline View (Text-Only)"] = "啟用名字檢視 (只顯示文字)"
L["Enable nameplate clickthrough for enemy units."] = "啟用敵方血條的滑鼠點擊穿透。"
L["Enable nameplate clickthrough for friendly units."] = "啟用友方血條的滑鼠點擊穿透。"
L["Enable Nameplates"] = "啟用血條"
L["Enable Quest Widget"] = "啟用任務套件"
L["Enable Resource Widget"] = "啟用資源套件"
L["Enable Scale Threat"] = "啟用仇恨值縮放大小"
L["Enable Shadow"] = "啟用陰影"
L["Enable Social Widget"] = "啟用社交套件"
L["Enable Stealth Widget (Feature not yet fully implemented!)"] = "啟用隱形套件 (嘗鮮版，功能尚未完整!)"
L["Enable Target Highlight Widget"] = "啟用顯著標示目標套件"
L["Enable Threat Coloring of Healthbar"] = "啟用仇恨值血條顏色"
L["Enable Threat Feedback"] = "啟用仇恨值提醒"
--Translation missing
L["Enable Threat Scale"] = "Enable Threat Scale"
L["Enable Threat System"] = "啟用仇恨值系統"
L["Enable Threat Textures"] = "啟用仇恨值材質"
--Translation missing
L["Enable Threat Transparency"] = "Enable Threat Transparency"
L["Enabled Threat Glow"] = "啟用仇恨值發光"
L["Enabling this will allow you to set the alpha adjustment for non-target nameplates."] = "啟用時，可以調整非當前目標血條的透明度。"
L["Enabling this will allow you to set the alpha adjustment for non-target names in headline view."] = "啟用時，可以調整非當前目標名字的透明度 (使用名字檢視時)。"
L["Enemy Casting"] = "敵方施法"
L["Enemy Custom Text"] = "敵方自訂文字"
L["Enemy Headline Color"] = "敵方名字顏色"
L["Enemy Name Color"] = "敵方名字顏色"
L["Enemy NPCs"] = "敵方 NPC"
L["Enemy Players"] = "敵方玩家"
L["Enemy Status Text"] = "敵方狀態文字"
L["Enemy Units"] = "敵方單位"
L["Everything"] = "全部"
L["Faction Icon"] = "陣營圖示"
L["Fanged Pit Viper"] = "尖牙深淵毒蛇"
L["Filter by Dispel Type"] = "依據驅散類型過濾"
L["Filter by Spell"] = "依據法術過濾"
L["Filter by Unit Reaction"] = "依據互動關係過濾"
L["Filtered Auras"] = "要過濾的光環"
L["Filtering"] = "過濾方式"
L["Font"] = "字體"
L["Font Size"] = "文字大小"
L["Font Style"] = "文字樣式"
L["Force Headline View while Out-of-Combat"] = "非戰鬥中強制使用名字檢視"
L["Force Healthbar on Target"] = "當前目標強制使用血條檢視"
--Translation missing
L["Force View By Status"] = "Force View By Status"
L["Foreground Texture"] = "前景材質"
L["Friend"] = "好友"
--Translation missing
L["Friendly & Neutral Units"] = "Friendly & Neutral Units"
L["Friendly ames Color"] = "友方顏色"
L["Friendly Caching"] = "友方快取"
L["Friendly Casting"] = "友方施法"
L["Friendly Custom Text"] = "友方自訂文字"
L["Friendly Headline Color"] = "友方名字顏色"
L["Friendly Name Color"] = "友方名字顏色"
L["Friendly Names Color"] = "友方名字顏色"
L["Friendly NPCs"] = "友方 NPC"
L["Friendly Players"] = "友方玩家"
L["Friendly Status Text"] = "友方狀態文字"
L["Friendly Units"] = "友方單位"
--Translation missing
L["Friendly Units in Combat"] = "Friendly Units in Combat"
L["Friends & Guild Members"] = "好友 & 公會成員"
L["Gas Cloud"] = "毒氣雲"
L["General Colors"] = "一般顏色"
L["General Nameplate Settings"] = "一般血條設定"
L["General Settings"] = "一般設定"
L["Group Quest"] = "隊伍任務"
L["Guardians"] = "守護者"
L["Guild Member"] = "公會成員"
L["Headline View"] = "名字檢視"
L["Headline View X"] = "名字檢視時的水平位置"
L["Headline View Y"] = "名字檢視時的垂直位置"
L["Health"] = "血量"
L["Health Coloring"] = "血量色彩"
L["Health Text"] = "血量文字"
L["Healthbar Mode"] = "血條模式"
L["Healthbar View"] = "血條檢視"
--Translation missing
L["Healthbar View X"] = "Healthbar View X"
--Translation missing
L["Healthbar View Y"] = "Healthbar View Y"
L["Healthbar X"] = "血條檢視時的水平位置"
L["Healthbar Y"] = "血條檢視時的垂直位置"
L["Hide Friendly Units"] = "隱藏友方單位"
L["Hide Healthbars"] = "隱藏血條"
L["Hide in Combat"] = "戰鬥中隱藏"
L["Hide in Instance"] = "副本中隱藏"
L["Hide Nameplate"] = "隱藏名條"
--Translation missing
L["Hide Nameplates"] = "Hide Nameplates"
L["Hide on Attacked Units"] = "已攻擊的單位隱藏"
L["Hide Special Units"] = "隱藏特殊單位"
L["High Threat"] = "高仇恨值"
L["Highlight Mobs on Off-Tanks"] = "顯著標示副坦克的怪"
L["Highlight Texture"] = "顯著標示材質"
L["Horizontal Align"] = "水平對齊"
L["Horizontal Alignment"] = "水平對齊"
L["Horizontal Spacing"] = "水平間距"
L["Hostile NPCs"] = "敵對 NPC"
L["Hostile Players"] = "敵對玩家"
L["Icon"] = "圖示"
L["Icon Mode"] = "圖示模式"
L["Icon Style"] = "圖示風格"
L["If checked, nameplates of mobs attacking another tank can be shown with different color, scale, and opacity."] = "啟用時，正在攻擊另一個坦克的怪血條可以顯示不同的顏色、大小和透明度。"
--Translation missing
L["If checked, nameplates of mobs attacking another tank can be shown with different color, scale, and transparency."] = "If checked, nameplates of mobs attacking another tank can be shown with different color, scale, and transparency."
L["If checked, threat feedback from boss level mobs will be shown."] = "啟用時，首領等級的怪會顯示仇恨值系統的變化。"
L["If checked, threat feedback from elite and rare mobs will be shown."] = "啟用時，精英和稀有怪會顯示仇恨值系統的變化。"
L["If checked, threat feedback from minor mobs will be shown."] = "啟用時，小怪會顯示仇恨值系統的變化。"
L["If checked, threat feedback from mobs you're currently not in combat with will be shown."] = "啟用時，非戰鬥中的怪會顯示仇恨值系統的變化。"
L["If checked, threat feedback from neutral mobs will be shown."] = "啟用時，中立怪會顯示仇恨值系統的變化。"
L["If checked, threat feedback from normal mobs will be shown."] = "啟用時，普通怪會顯示仇恨值系統的變化。"
L["If checked, threat feedback from tapped mobs will be shown regardless of unit type."] = "啟用時，(灰色血條) 無效的怪會顯示仇恨值系統的變化。"
L["If checked, threat feedback will only be shown in instances (dungeons, raids, arenas, battlegrounds), not in the open world."] = "啟用時，只有在副本中 (5人地城、團隊、競技場、戰場) 才會顯示仇恨值系統的變化，在野外不會。"
L["If enabled your nameplates alpha will always be the setting below when you have no target."] = "啟用時，沒有當前目標時血條透明度會永遠使用下方的設定值。"
L["If enabled your nameplates scale will always be the setting below when you have no target."] = "啟用時，沒有當前目標時血條縮放大小會永遠使用下方的設定值。"
L["If enabled your target's alpha will always be the setting below."] = "啟用時，當前目標的血條透明度會永遠使用下方的設定值。"
L["If enabled your target's scale will always be the setting below."] = "啟用時，當前目標的血條縮放大小會永遠使用下方的設定值。"
L["Ignore Marked Units"] = "忽略被標記圖示的單位"
L["Ignored Alpha"] = "已忽略的透明度"
L["Ignored Scaling"] = "已忽略的縮放大小"
L["Immortal Guardian"] = "不朽守護者"
L["In combat, use alpha based on threat level as configured in the threat system. The custom alpha is only used out of combat."] = "戰鬥中依據仇恨值系統中所設定的仇恨程度來顯示透明度，只有非戰鬥中才使用自訂透明度。"
L["In combat, use coloring based on threat level as configured in the threat system. The custom color is only used out of combat."] = "戰鬥中依據仇恨值系統中所設定的仇恨程度來顯示顏色，只有非戰鬥中才使用自訂顏色。"
L["In combat, use coloring, alpha, and scaling based on threat level as configured in the threat system. Custom settings are only used out of combat."] = "戰鬥中依據仇恨值系統中所設定的仇恨程度來顯示顏色、透明度和縮放大小，只有非戰鬥中才使用自訂設定。"
--Translation missing
L["In combat, use coloring, transparency, and scaling based on threat level as configured in the threat system. Custom settings are only used out of combat."] = "In combat, use coloring, transparency, and scaling based on threat level as configured in the threat system. Custom settings are only used out of combat."
L["In combat, use scaling based on threat level as configured in the threat system. The custom scale is only used out of combat."] = "戰鬥中依據仇恨值系統中所設定的仇恨程度來顯示縮放大小，只有非戰鬥中才使用自訂縮放大小。"
L["Interruptable Casts"] = "可以打斷的法術"
L["Kinetic Bomb"] = "動能炸彈"
L["Label Text Offset"] = "標籤文字位置"
L["Layout"] = "版面配置"
L["Left-to-right"] = "由左至右"
L["Level"] = "等級"
L["Level Text"] = "等級文字"
L["Lich King"] = "巫妖王"
L["Living Ember"] = "燃燒的餘燼"
L["Living Inferno"] = "燃燒的煉獄火"
L["Look and Feel"] = "外觀和風格"
L["Low Threat"] = "低仇恨值"
L["Marked Immortal Guardian"] = "標記的不朽守護者"
L["Max HP Text"] = "最大血量文字"
L["Medium Threat"] = "中仇恨值"
L["Migrating deprecated settings in configuration ..."] = "正在更新設定選項中已移除的設定..."
--Translation missing
L["Minions & By Status"] = "Minions & By Status"
L["Minor"] = "小怪"
L["Minuss"] = "小怪"
L["Mode"] = "模式"
L["Mono"] = "單色"
L["Mouseover"] = "滑鼠指向"
L["Mouseover Units"] = "滑鼠指向的單位"
L["Muddy Crawfish"] = "泥濘螯蝦"
L["Name Text"] = "名字文字"
L["Nameplate Clickthrough"] = "血條穿透點擊"
L["Nameplate clickthrough cannot be changed while in combat."] = "戰鬥中無法更改血條穿透點擊。"
L["Nameplate Settings"] = "血條設定"
L["Nameplate Style"] = "血條樣式"
L["Names"] = "名字"
L["Neutral NPCs"] = "中立 NPC"
L["Neutral Units"] = "中立單位"
L["Neutral Units & Minions & Status"] = "中立單位 & 小怪 & 狀態"
L["No"] = "否"
L["No Outline, Monochrome"] = "沒有外框、單色"
--Translation missing
L["No Target"] = "No Target"
L["No target found."] = "無法找到目標。"
L["Non-Attacked Units"] = "非攻擊的單位"
L["None"] = "無"
--Translation missing
L["Non-Target"] = "Non-Target"
L["Non-Target Alpha"] = "非當前目標透明度"
L["Normal Border"] = "一般邊框"
L["Normal Units"] = "普通單位"
L["Nothing to paste!"] = "沒有內容可供貼上!"
L["NPC Role"] = "NPC 角色"
L["NPC Role, Guild"] = "NPC 角色、公會"
L["NPC Role, Guild, or Level"] = "NPC 角色、公會或等級"
L["NPCs"] = "NPC"
L["Offset"] = "位置"
L["Offset X"] = "水平位置"
L["Offset Y"] = "垂直位置"
L["Off-Tank"] = "副坦克"
--Translation missing
L["On Enemy Units You Cannot Attack"] = "On Enemy Units You Cannot Attack"
--Translation missing
L["On Friendly Units in Combat"] = "On Friendly Units in Combat"
--Translation missing
L["On Target"] = "On Target"
L["Only Alternate Power"] = "只有首領戰特殊能量"
L["Only in Instances"] = "只在副本內"
L["Only on Attacked Units"] = "只有可攻擊的單位"
L["Onyxian Whelp"] = "奧妮克希亞幼龍"
L["Open Blizzard Settings"] = "開始遊戲內建的設定"
L["Open Config"] = "開啟設定選項"
L["Open Options"] = "開啟設定選項"
L["Options"] = "設定選項"
L["options:"] = "選項:"
--Translation missing
L["Out of Combat"] = "Out of Combat"
L["Outline"] = "外框"
L["Outline, Monochrome"] = "外框、單色"
L["Paste"] = "貼上"
L["Pasted!"] = "已貼上!"
L["Percent Text"] = "百分比文字"
L["Pets"] = "寵物"
L["Placement"] = "位置"
L["Player Quest"] = "玩家任務"
L["Players"] = "玩家"
L["Presences"] = "存在"
L["Preview"] = "預覽"
L["Quest"] = "任務"
L["Quests of your group members that you don't have in your quest log or that you have already completed."] = "隊友的任務，你沒有該任務或已經完成。"
L["Raging Spirit"] = "狂怒的鬼魂"
L["Rares & Bosses"] = "稀有怪 & 首領"
L["Rares & Elites"] = "稀有怪 & 精英"
L["Reanimated Adherent"] = "再活化的擁護者"
L["Reanimated Fanatic"] = "再活化的狂熱者"
L["Render font without antialiasing."] = "文字不要消除鋸齒。"
L["Resource"] = "資源"
L["Resource Bar"] = "資源條"
L["Resource Text"] = "資源文字"
L["Restore Defaults"] = "恢復成預設值"
L["Reverse Order"] = "反向排序"
L["Reverse the sort order (e.g., \"A to Z\" becomes \"Z to A\")."] = "反轉排列順序 (例如 \"A 到 Z\" 變成 \"Z 到 A\")"
L["Reverting default settings back to look and feel before 8.4 ..."] = "將預設設定還原成 8.4 版之前的外觀和風格 ..."
L["Right-to-left"] = "由右至左"
L["Row Limit"] = "列數限制"
L["Same as Background"] = "和背景相同"
L["Same as Foreground"] = "和前景相同"
L["Same as Headline"] = "和名字相同"
L["Scale"] = "縮放大小"
L["Scale by Status"] = "依據狀態縮放"
L["Seals"] = "光環"
L["Set alpha settings for different threat levels."] = "替不同的仇恨程度設定透定度。"
L["Set Icon"] = "設定圖示"
L["Set Name"] = "設定名字"
L["Set scale settings for different threat levels."] = "替不同的仇恨程度設定縮放大小。"
L["Set the outlining style of the text."] = "設定文字的外框樣式。"
L["Set the roles your specs represent."] = "設定專精所代表的角色類型。"
L["Set threat textures and their coloring options here."] = "仇恨材質和顏色的設定選項。"
--Translation missing
L["Set transparency settings for different threat levels."] = "Set transparency settings for different threat levels."
L["Sets your spec "] = "設定專精"
L["Shadow"] = "陰影"
L["Shadow Fiend"] = "暗影惡魔"
L["Shadowy Apparition"] = "暗影幻靈"
L["Shambling Horror"] = "蹣跚的恐獸"
L["Shapeshifts"] = "形態"
L["Shielded Coloring"] = "受保護顏色"
L["Show a glow based on threat level around the nameplate's healthbar (in combat)."] = "依據仇恨程度在血條周圍顯示發光效果 (戰鬥中)。"
--Translation missing
L["Show Absorbs"] = "Show Absorbs"
L["Show all debuffs on friendly units that you can cure."] = "顯示友方單位身上你可以驅散的所有減益效果。"
L["Show all nameplates (CTRL-V)."] = "顯示所有血條 (CTRL-V)。"
L["Show an quest icon at the nameplate for quest mobs."] = "任務怪的血條上方顯示任務圖示。"
L["Show auras as bars (with optional icons)."] = "光環顯示為進度條 (可選擇是否要圖示)。"
L["Show auras as icons in a grid configuration."] = "光環顯示為網格狀的圖示。"
L["Show auras in order created with oldest aura first."] = "依據光環獲得的先後順序排列。"
L["Show Blizzard Nameplates for Friendly Units"] = "友方單位顯示遊戲內建的血條"
L["Show Border"] = "顯示邊框"
L["Show Buffs on Bosses"] = "顯示首領的增益效果"
L["Show By Status"] = "依據狀態顯示"
L["Show By Unit Type"] = "依據單位類型顯示"
L["Show Castbar"] = "顯示施法條"
L["Show Castbar in Headline View"] = "名字檢視時要顯示施法條"
L["Show Elite Border"] = "顯示精英邊框"
L["Show Elite Icon"] = "顯示精英圖示"
L["Show Enemy"] = "顯示敵方"
L["Show enemy nameplates (ALT-V)."] = "顯示敵方血條 (ALT-V)。"
L["Show Enemy Totems"] = "顯示敵方圖騰"
L["Show Enemy Units"] = "顯示敵方單位"
L["Show For"] = "顯示"
L["Show Friendly"] = "顯示友方"
L["Show Friendly Class Icons"] = "顯示友方職業圖示"
L["Show friendly nameplates (SHIFT-V)."] = "顯示友方血條 (SHIFT-V)。"
L["Show Friendly Totems"] = "顯示友方圖騰"
L["Show Friendly Units"] = "顯示友方單位"
L["Show Health Text"] = "顯示血量文字"
L["Show Icon to the Left"] = "圖示顯示在左側"
L["Show in Headline View"] = "名字檢視時要顯示"
L["Show in Healthbar View"] = "血條檢視時要顯示"
L["Show Level Text"] = "顯示等級文字"
L["Show Mouseover"] = "顯示滑鼠指向"
L["Show Name Text"] = "顯示名字文字"
L["Show Nameplate"] = "顯示血條"
L["Show Neutral Units"] = "顯示中立單位"
L["Show Overlay for Uninterruptable Casts"] = "顯示無法打斷法術的提示"
L["Show shadow with text."] = "顯示文字陰影"
L["Show Skull Icon"] = "顯示骷髏圖示"
L["Show Spell Icon"] = "顯示法術圖示"
L["Show Spell Text"] = "顯示法術文字"
L["Show stack count as overlay on aura icon."] = "在光環圖示上顯示堆疊層數。"
L["Show Target"] = "顯示當前目標"
L["Show Target Mark Icon in Headline View"] = "文字檢視時要顯示標記圖示"
L["Show Target Mark Icon in Healthbar View"] = "血條檢視時要顯示標記圖示"
L["Show the mouseover highlight on all units."] = "所有單位都要顯示滑鼠指向時的顯著標示效果。"
L["Show threat feedback based on unit type or status or environmental conditions."] = "根據單位類型、狀態或環境條件顯示仇恨系統的變化。"
L["Show threat feedback for units based on their type or status or your current area."] = "根據單位類型、狀態或目前區域顯示仇恨系統的變化。"
L["Show Threat Feedback From"] = "顯示仇恨系統的變化"
L["Show Threat Glow"] = "顯示仇恨發光效果"
L["Show threat glow only on units in combat with the player."] = "只有和玩家戰鬥中的單位才顯示仇恨發光效果。"
L["Shows a border around the castbar of nameplates (requires /reload)."] = "在血條的施法條周圍顯示邊框 (需要 /reload)。"
L["Shows a faction icon next to the nameplate of players."] = "在玩家血條旁顯示陣營圖示。"
L["Shows a glow based on threat level around the nameplate's healthbar (in combat)."] = "依據仇恨程度在血條周圍顯示發光效果 (戰鬥中)。"
L["Shows an icon for friends and guild members next to the nameplate of players."] = "在玩家血條旁顯示好友和公會成員圖示。"
L["Shows resource information for bosses and rares."] = "顯示首領和稀有怪的資源。"
L["Shows resource information only for alternatve power (of bosses or rares, mostly)."] = "顯示特殊能量的資源 (大多是首領和稀有怪，例如腐化值、威脅值...)。"
--Translation missing
L["Situational Scale"] = "Situational Scale"
--Translation missing
L["Situational Transparency"] = "Situational Transparency"
L["Size"] = "大小"
L["Sizing"] = "大小"
L["Skull"] = "骷髏"
L["Skull Icon"] = "骷髏圖示"
L["Social"] = "社交"
L["Sort by overall duration in ascending order."] = "依據整體持續時間升冪排序。"
L["Sort by time left in ascending order."] = "依據剩餘時間升冪排序。"
L["Sort in ascending alphabetical order."] = "依據英文字母升冪排序。"
L["Sort Order"] = "排列順序"
L["Spec Roles"] = "專精角色類型"
L["Special Effects"] = "特殊效果"
L["Spell Icon"] = "法術圖示"
L["Spell Text"] = "法術文字"
L["Spirit Wolf"] = "幽靈狼"
L["Square"] = "方塊"
L["Stack Count"] = "堆疊層數"
L["Stances"] = "姿勢形態"
L["Status Text"] = "狀態文字"
L["Stealth"] = "隱形"
L["Style"] = "風格"
L["Switch"] = "切換"
L["Symbol"] = "符號"
L["Tank"] = "坦克"
L["Tapped Units"] = "無效的單位"
--Translation missing
L["Target"] = "Target"
L["Target Highlight"] = "顯著標示目標"
L["Target Marked"] = "已標記圖示"
L["Target Marked Units"] = "標記圖示的單位"
L["Target Markers"] = "標記圖示"
L["Target Only"] = "只有當前目標"
L["Target Unit"] = "目標單位"
--Translation missing
L["Target-based Scale"] = "Target-based Scale"
--Translation missing
L["Target-based Transparency"] = "Target-based Transparency"
L["Text at Full HP"] = "血量全滿的文字"
L["Text Boundaries"] = "文字範圍"
L["Text Bounds and Sizing"] = "文字範圍和大小"
L["Text Height"] = "文字高度"
L["Text Width"] = "文字寬度"
L["Texture"] = "材質"
L["Textures"] = "材質"
--Translation missing
L["The scale of all nameplates if you have no target unit selected."] = "The scale of all nameplates if you have no target unit selected."
--Translation missing
L["The scale of non-target nameplates if a target unit is selected."] = "The scale of non-target nameplates if a target unit is selected."
--Translation missing
L["The target nameplate's scale if a target unit is selected."] = "The target nameplate's scale if a target unit is selected."
--Translation missing
L["The target nameplate's transparency if a target unit is selected."] = "The target nameplate's transparency if a target unit is selected."
--Translation missing
L["The transparency of all nameplates if you have no target unit selected."] = "The transparency of all nameplates if you have no target unit selected."
--Translation missing
L["The transparency of non-target nameplates if a target unit is selected."] = "The transparency of non-target nameplates if a target unit is selected."
L["These options allow you to control whether target marker icons are hidden or shown on nameplates and whether a nameplate's healthbar (in healthbar view) or name (in headline view) are colored based on target markers."] = "這些選項可以控制是否要在血條上顯示標記圖示，以及血條 (在血條檢視時) 和名字 (在名字檢視時) 是否要依據標記圖示變換顏色。"
L["These options allow you to control whether the castbar is hidden or shown on nameplates."] = "這些選項可以控制是否要在血條上顯示施法條。"
L["These options allow you to control which nameplates are visible within the game field while you play."] = "這些選項可以控制要在遊戲中看見哪些血條。"
L["These settings will define the space that text can be placed on the nameplate. Having too large a font and not enough height will cause the text to be not visible."] = "這些選項會設定血條上面擺放文字的空間。文字太大而高度不夠時會導致無法顯示文字。"
L[ [=[These settings will define the space that text can be placed on the nameplate.
Having too large a font and not enough height will cause the text to be not visible.]=] ] = [=[這些選項會設定血條上面擺放文字的空間。
文字太大而高度不夠時會導致無法顯示文字。]=]
L["Thick"] = "粗"
L["Thick Outline"] = "粗外框"
L["Thick Outline, Monochrome"] = "粗外框、單色"
L["This allows you to save friendly player class information between play sessions or nameplates going off the screen. |cffff0000(Uses more memory)"] = "允許儲存友方玩家的職業資訊，方便在不同的登入期間和血條超出畫面範圍以外時使用。|cffff0000(會使用較多的記憶體)"
L["This lets you select the layout style of the aura widget."] = "選擇光環套件的版面配置風格。"
L["This lets you select the layout style of the aura widget. (requires /reload)"] = "選擇光環套件的版面配置風格。(需要 /reload)"
L["This option allows you to control whether a spell's icon is hidden or shown on castbars."] = "顯示或隱藏施法條上的法術圖示。"
L["This option allows you to control whether a spell's name is hidden or shown on castbars."] = "顯示或隱藏施法條上的法術名稱。"
L["This option allows you to control whether a unit's health is hidden or shown on nameplates."] = "顯示或隱藏血條上的血量。"
L["This option allows you to control whether a unit's level is hidden or shown on nameplates."] = "顯示或隱藏血條上的等級。"
L["This option allows you to control whether a unit's name is hidden or shown on nameplates."] = "顯示或隱藏血條上的名字。"
L["This option allows you to control whether custom settings for nameplate style, color, alpha and scaling should be used for this nameplate."] = "血條樣式、顏色、透明度和縮放大小等自訂設定是否要套用到這個血條。"
--Translation missing
L["This option allows you to control whether custom settings for nameplate style, color, transparency and scaling should be used for this nameplate."] = "This option allows you to control whether custom settings for nameplate style, color, transparency and scaling should be used for this nameplate."
L["This option allows you to control whether headline view (text-only) is enabled for nameplates."] = "血條是否要使用名字檢視 (只顯示文字)。"
L["This option allows you to control whether nameplates should fade in or out when displayed or hidden."] = "血條出現和消失時是否要顯示淡出淡入的效果。"
L["This option allows you to control whether textures are hidden or shown on nameplates for different threat levels. Dps/healing uses regular textures, for tanking textures are swapped."] = "不同的仇恨程度是否要顯示或隱藏血條材質。DPS/治療使用一般材質，坦克的材質會對調。"
L["This option allows you to control whether the custom icon is hidden or shown on this nameplate."] = "顯示或隱藏這個血條上的自訂圖示。"
L["This option allows you to control whether the elite icon for elite units is hidden or shown on nameplates."] = "顯示或隱藏精英單位血條上的精英圖示。"
L["This option allows you to control whether the skull icon for rare units is hidden or shown on nameplates."] = "顯示或隱藏稀有單位血條上的骷髏圖示。"
L["This option allows you to control whether threat affects the alpha of nameplates."] = "是否要依據仇恨值變換血條的透明度。"
L["This option allows you to control whether threat affects the healthbar color of nameplates."] = "是否要依據仇恨值變換血條的顏色。"
L["This option allows you to control whether threat affects the scale of nameplates."] = "是否要依據仇恨值變換血條的大小。"
--Translation missing
L["This option allows you to control whether threat affects the transparency of nameplates."] = "This option allows you to control whether threat affects the transparency of nameplates."
--Translation missing
L["This setting will disable threat scale for target marked, mouseover or casting units and instead use the general scale settings."] = "This setting will disable threat scale for target marked, mouseover or casting units and instead use the general scale settings."
--Translation missing
L["This setting will disable threat transparency for target marked, mouseover or casting units and instead use the general transparency settings."] = "This setting will disable threat transparency for target marked, mouseover or casting units and instead use the general transparency settings."
L["This widget shows a highlight border around the healthbar of your target's nameplate."] = "這個套件會在當前目標的血條周圍顯示明顯的邊框。"
L["This widget shows a highlight border around your target nameplate."] = "這個套件會在當前目標的名條周圍顯示明顯的邊框。"
L["This widget shows a highlight border around your target's nameplate or colors the healthbar of your target's nameplate in a custom color."] = "這個套件會在當前目標的血條周圍顯示明顯的邊框，或是使用自訂顏色來顯示當前目標的血條。"
L["This widget shows a quest icon above unit nameplates or colors the nameplate healthbar of units that are involved with any of your current quests."] = "這個套件會在和當前任務相關的單位血條上方顯示任務圖示或變換血條顏色。"
L["This widget shows a stealth icon on nameplates of units that can detect stealth."] = "這個套件會在能夠偵測到的隱形單位血條上顯示隱形圖示。"
L["This widget shows a unit's auras (buffs and debuffs) on its nameplate."] = "這個套件會在血條上顯示單位的光環 (增益和減益效果)。"
--Translation missing
L["This widget shows auras from boss mods on your nameplate (since patch 7.2, hostile nameplates only in instances and raids)."] = "This widget shows auras from boss mods on your nameplate (since patch 7.2, hostile nameplates only in instances and raids)."
L["This widget shows class icons on nameplates of players."] = "這個套件會在玩家血條上顯示職業圖示。"
L["This widget shows icons for friends, guild members, and faction on nameplates."] = "這個套件會在血條上顯示好友、公會成員和陣營圖示。"
L["This widget shows information about your target's resource on your target nameplate. The resource bar's color is derived from the type of resource automatically."] = "這個套件會在當前目標血條上顯示目標的資源，會依據資源類型自動變換資源條的顏色。"
L["This widget shows various icons (orbs and numbers) on enemy nameplates in arenas for easier differentiation."] = "這個套件會在競技場對手的血條上顯示各種圖示 (圓球或數字)，以便輕鬆辨別對手。"
L["This widget shows your combo points on your target nameplate."] = "這個套件會在當前目標血條上顯示你的連擊點數。"
L["This widget will display auras that match your filtering on your target nameplate and others you recently moused over."] = "這個套件會在當前目標以及其他最近滑鼠指向過目標的血條上顯示符合過濾條件的光環。"
L["This will allow you to add additional scaling changes to specific mob types."] = "對指定的怪物類型加上額外的縮放大小變化。"
L["This will allow you to disable threat art on target marked units."] = "停用被標記圖示單位的仇恨值美術圖示。"
L["This will allow you to disable threat scale changes on target marked units."] = "停用被標記圖示單位的仇恨值縮放大小變化。"
L["This will allow you to disabled threat alpha changes on target marked units."] = "停用被標記圖示單位的仇恨值透明度變化。"
L["This will color the aura based on its type (poison, disease, magic, curse) - for Icon Mode the icon border is colored, for Bar Mode the bar itself."] = "依據光環類型 (中毒、疾病、魔法、詛咒) 顯示顏色 - 圖示模式時是圖示邊框的顏色，進度條模式時是進度條的顏色。"
L["This will format text to a simpler format using M or K for millions and thousands. Disabling this will show exact HP amounts."] = "使用簡短的格式 (萬 或 億) 來顯示數值，停用時會顯示精確的血量。"
L["This will format text to show both the maximum hp and current hp."] = "同時顯示目前血量和最大血量數值。"
L["This will format text to show hp as a value the target is missing."] = "顯示目標損失的血量數值。"
L["This will toggle the aura widget to only show for your current target."] = "只顯示當前目標的光環。"
L["This will toggle the aura widget to show the cooldown spiral on auras."] = "顯示光環的倒數旋轉動畫。"
L["This will toggle the aura widget to show the cooldown spiral on auras. (requires /reload)"] = "顯示光環的倒數旋轉動畫。(需要 /reload)"
--Translation missing
L["Threat Glow"] = "Threat Glow"
L["Threat System"] = "仇恨值系統"
L["Tidy Plates Fading"] = "Tidy 血條淡出"
L["Time Left"] = "剩餘時間"
L["Time Text Offset"] = "時間文字位置"
L["Toggling"] = "切換"
L["Top-to-bottom"] = "由上到下"
L["Totem Alpha"] = "圖騰透明度"
L["Totem Nameplates"] = "圖騰血條"
L["Totem Scale"] = "圖騰縮放大小"
--Translation missing
L["Totem Transparency"] = "Totem Transparency"
L["Totems"] = "圖騰"
--Translation missing
L["Transparency"] = "Transparency"
--Translation missing
L["Transparency & Scaling"] = "Transparency & Scaling"
L["Treant"] = "樹人"
L["Truncate Text"] = "簡短文字"
L["Type direct icon texture path using '\\' to separate directory folders, or use a spellid."] = "直接輸入圖示材質的路徑，使用 '\\' 來分隔資料夾名字，或是使用法術 ID。"
L["Typeface"] = "字體"
L["Undetermined"] = "尚未決定"
L["Uninterruptable Casts"] = "無法打斷的法術"
L["Unit Base Alpha"] = "單位基礎透明度"
L["Unit Base Scale"] = "單位基礎縮放大小"
--Translation missing
L["Unit Base Transparency"] = "Unit Base Transparency"
L["Unknown option: "] = "未知的選項："
L["Usage: /tptp [options]"] = "指令用法： /tptp [options]"
L["Use a custom color for healthbar (in healthbar view) or name (in headline view) of friends and/or guild members."] = "好友/公會成員的血條 (在血條檢視時) 或名字 (在名字檢視時) 使用自訂顏色。"
--Translation missing
L["Use a custom color for the castbar's background."] = "Use a custom color for the castbar's background."
L["Use a custom color for the healtbar's background."] = "血條背景使用自訂顏色。"
L["Use a custom color for the healtbar's border."] = "血條邊框使用自訂顏色。"
L["Use a custom color for the healthbar of quest mobs."] = "任務怪的血條使用自訂顏色。"
L["Use a custom color for the healthbar of the current target."] = "當前目標的血條使用自訂顏色。"
L["Use a custom color for the healthbar of your current target."] = "當前目標的血條使用自訂顏色。"
L["Use alpha settings of healthbar view also to headline view."] = "血條檢視的透明度設定也要套用到名字檢視。"
L["Use Blizzard default nameplates for friendly nameplates and disable ThreatPlates for these units."] = "友方玩家使用遊戲內建的血條，不要使用威力血條。"
L["Use coloring based an threat level (configured in Threat System) in combat (custom color is only used out of combat)."] = "戰鬥中依據仇恨程度來變化顏色 (仇恨值系統中所設定的)，只有非戰鬥中才能使用自訂顏色。"
L["Use Custom Settings"] = "使用自訂的設定"
--Translation missing
L["Use scale settings of Healthbar View also for Headline View."] = "Use scale settings of Healthbar View also for Headline View."
L["Use scaling settings of healthbar view also to headline view."] = "血條檢視的縮放大小設定也要套用到名字檢視。"
--Translation missing
L["Use target-based scale as absolute scale and ignore unit base scale."] = "Use target-based scale as absolute scale and ignore unit base scale."
--Translation missing
L["Use target-based transparency as absolute transparency and ignore unit base transparency."] = "Use target-based transparency as absolute transparency and ignore unit base transparency."
L["Use Target's Name"] = "使用目標的名字"
--Translation missing
L["Use the castbar's foreground color also for the background."] = "Use the castbar's foreground color also for the background."
L["Use the healthbar's background color also for the border."] = "邊框使用和血條背景相同的顏色。"
L["Use the healthbar's foreground color also for the background."] = "背景使用和血條前景相同的顏色。"
L["Use the healthbar's foreground color also for the border."] = "邊框使用和血條前景相同的顏色。"
L["Use Threat Alpha"] = "使用仇恨值透明度"
L["Use Threat Coloring"] = "使用仇恨值色彩"
L["Use Threat Colors"] = "使用仇恨值顏色"
L["Use Threat Scale"] = "使用仇恨值縮放大小"
--Translation missing
L["Use threat scale as additive scale and add or substract it from the general scale settings."] = "Use threat scale as additive scale and add or substract it from the general scale settings."
--Translation missing
L["Use threat transparency as additive transparency and add or substract it from the general transparency settings."] = "Use threat transparency as additive transparency and add or substract it from the general transparency settings."
--Translation missing
L["Use transparency settings of Healthbar View also for Headline View."] = "Use transparency settings of Healthbar View also for Headline View."
--Translation missing
L["Uses the target-based transparency as absolute transparency and ignore unit base transparency."] = "Uses the target-based transparency as absolute transparency and ignore unit base transparency."
L["Val'kyr Shadowguard"] = "華爾琪影衛"
L["Venomous Snake"] = "毒蛇"
L["Vertical Align"] = "垂直對齊"
L["Vertical Alignment"] = "垂直對齊"
L["Vertical Spacing"] = "垂直間距"
L["Viper"] = "響尾蛇"
L["Visibility"] = "可見性"
L["Volatile Ooze"] = "暴躁軟泥怪"
L["Warning Glow for Threat"] = "仇恨值發光警告"
L["Water Elemental"] = "水元素"
L["Web Wrap"] = "纏繞之網"
L["We're unable to change this while in combat"] = "戰鬥中無法更改"
L["White List"] = "白名單"
L["White List (Mine)"] = "白名單 (我的)"
L["Wide"] = "較寬"
L["Widgets"] = "套件"
L["X"] = "水平"
L["Y"] = "垂直"
L["Yes"] = "是"
L["You can access the "] = "可以存取"
L["Your own quests that you have to complete."] = "自己的、必須由你來完成的任務。"
