------------------------------------------------------------------------
--	PhanxChat                                                         --
--	Removes chat frame clutter and adds some functionality.           --
--	by Phanx < addons@phanx.net >                                     --
--	Copyright © 2006–2010 Phanx. See README for license terms.        --
--	http://www.wowinterface.com/downloads/info6323-PhanxChat.html     --
--	http://wow.curse.com/downloads/wow-addons/details/phanxchat.aspx  --
------------------------------------------------------------------------

local NUM_HISTORY_LINES = 15

------------------------------------------------------------------------
--	Nothing beyond here is intended to be configurable.
------------------------------------------------------------------------

local _, PhanxChat = ...

local history = { }

local REPEAT_EVENTS = {
	"CHAT_MSG_SAY",
	"CHAT_MSG_YELL",
	"CHAT_MSG_CHANNEL",
	"CHAT_MSG_EMOTE",
	"CHAT_MSG_TEXT_EMOTE",
}

local function HideRepeats(frame, event, message, sender, ...)
	if sender and sender ~= playerName and type(message) == "string" then
		if not history[frame] then
			history[frame] = { }
		end

		local t = history[frame]
		local v = ("%s:%s"):format(sender, message:gsub("%s", ""):lower())

		if t[v] then
			return true
		end

		if #t == NUM_HISTORY_LINES then
			local r = tremove(t, 1)
			t[r] = nil
		end

		tinsert(t, v)
		t[v] = true
	end
	return false, message, sender, ...
end

function PhanxChat:SetHideRepeats(v)
	if self.debug then print("PhanxChat: SetHideRepeats", v) end
	if type(v) == "boolean" then
		self.db.HideRepeats = v
	end

	if self.db.HideRepeats then
		for _, event in ipairs(REPEAT_EVENTS) do
			ChatFrame_AddMessageEventFilter(event, HideRepeats)
		end
	elseif not self.isLoading then
		for _, event in ipairs(REPEAT_EVENTS) do
			ChatFrame_RemoveMessageEventFilter(event, HideRepeats)
		end
	end
end

table.insert(PhanxChat.RunOnLoad, PhanxChat.SetHideRepeats)

------------------------------------------------------------------------