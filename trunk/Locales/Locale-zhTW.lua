--[[--------------------------------------------------------------------
	PhanxChat
	Reduces chat frame clutter and enhances chat frame functionality.
	Copyright (c) 2006-2012 Phanx <addons@phanx.net>. All rights reserved.
	See the accompanying README and LICENSE files for more information.
	http://www.wowinterface.com/downloads/info6323-PhanxChat.html
	http://www.curse.com/addons/wow/phanxchat
------------------------------------------------------------------------
	Localization: zhTW / Traditional Chinese / 繁體中文
	Last Updated: 2012-04-20 by yunrong on CurseForge
----------------------------------------------------------------------]]

if GetLocale() ~= "zhTW" then return end
local _, PhanxChat = ...
PhanxChat.L = {

------------------------------------------------------------------------
--	Server Channel Names
--	These must exactly match the channel names used in your locale.
------------------------------------------------------------------------

	["Conversation"]     = CHAT_BN_CONVERSATION_SEND:match("%.%s?(%.-)%]"), -- needs check
	["General"]          = "綜合",
	["GuildRecruitment"] = "公會招募",
	["LocalDefense"]     = "本地防務",
	["LookingForGroup"]  = "尋求組隊",
	["Trade"]            = "交易",
	["WorldDefense"]     = "世界防務",

------------------------------------------------------------------------
--	Abbreviated Channel Names
--	These should be one- or two-character abbreviations.
------------------------------------------------------------------------

--	CONVERSATION_ABBR       = "", -- needs translation
	GENERAL_ABBR            = "綜",
	GUILDRECRUITMENT_ABBR   = "招",
	LOCALDEFENSE_ABBR       = "本",
	LOOKINGFORGROUP_ABBR    = "尋",
	TRADE_ABBR              = "交",
	WORLDDEFENSE_ABBR       = "世",

	BATTLEGROUND_ABBR        = "戰",
	BATTLEGROUND_LEADER_ABBR = "戰領",
	GUILD_ABBR               = "公",
	OFFICER_ABBR             = "官",
	PARTY_ABBR               = "隊",
--	PARTY_GUIDE_ABBR         = "",
--	PARTY_LEADER_ABBR        = "",
	RAID_ABBR                = "團",
	RAID_LEADER_ABBR         = "領",
	RAID_WARNING_ABBR        = "警",
	SAY_ABBR                 = "說",
	YELL_ABBR                = "喊",
	WHISPER_ABBR             = "密自", -- incoming
	WHISPER_INFORM_ABBR      = "密往", -- outgoing

------------------------------------------------------------------------
--	User Interface Strings
--	Please verify that your translations fit in the available UI space.
------------------------------------------------------------------------

--	["Short channel names"] = "",
--	["Shorten channel names and chat strings."] = "",
--	["Short player names"] = "",
--	["Shorten player names by removing realm names and Real ID last names."] = "",
--	["Replace real names"] = "",
--	["Replace Real ID names with character names."] = "",
	["Enable arrow keys"] = "輸入框中使用方向鍵",
	["Enable arrow keys in the chat edit box."] = "允許在輸入框中使用方向鍵。",
	["Enable resize edges"] = "開啟邊緣調整",
	["Enable resize controls at all edges of chat frames, instead of only the bottom right corner."] = "開啟聊天框邊緣調整，而不只是在右下角調整。",
--	["Link URLs"] = "",
--	["Transform URLs in chat into clickable links for easy copying."] = "",
--	["Lock docked tabs"] = "",
--	["Prevent docked chat tabs from being dragged unless the Shift key is down."] = "",
--	["Move edit boxes"] = "",
--	["Move chat edit boxes to the top their respective chat frame."] = "",
	["Hide buttons"] = "隱藏按鈕",
--	["Hide the chat frame menu and scroll buttons."] = "",
--	["Hide extra textures"] = "",
--	["Hide the extra textures on chat tabs and chat edit boxes added in patch 3.3.5."] = "",
--	["Hide tab flash"] = "",
	["Disable the flashing effect on chat tabs that receive new messages."] = "禁用聊天框收到消息後標籤的閃爍效果。",
--	["Hide notices"] = "",
--	["Hide channel notification messages."] = "",
--	["Hide repeats"] = "",
--	["Hide repeated messages in public channels."] = "",
--	["Sticky chat"] = "",
--	["Set which chat types should be sticky."] = "",
	["All"] = "所有",
	["Default"] = "預設",
--	["None"] = "",
	["Fade time"] = "漸隱時間",
--	["Set the time, in minutes, to wait before fading chat text. A setting of 0 will disable fading."] = "",
	["Font size"] = "字體大小",
--	["Set the font size for all chat frames."] = "",
--	["Note that this is just a shortcut to configuring each chat frame individually through the Blizzard chat options."] = "",

------------------------------------------------------------------------

}