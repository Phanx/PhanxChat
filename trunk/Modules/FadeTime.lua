--[[--------------------------------------------------------------------
	PhanxChat
	Reduces chat frame clutter and enhances chat frame functionality.
	Copyright (c) 2006-2012 Phanx <addons@phanx.net>. All rights reserved.
	See the accompanying README and LICENSE files for more information.
	http://www.wowinterface.com/downloads/info6323-PhanxChat.html
	http://www.curse.com/addons/wow/phanxchat
----------------------------------------------------------------------]]

local _, PhanxChat = ...

function PhanxChat:FadeTime(frame)
	if self.db.FadeTime > 0 then
		frame:SetFading(1)
		frame:SetTimeVisible(self.db.FadeTime * 60)
	else
		frame:SetFading(0)
	end
end

function PhanxChat:SetFadeTime(v)
	if self.debug then print("PhanxChat: SetFadeTime", v) end
	if type(v) == "number" then
		self.db.FadeTime = v
	end

	for frame in pairs(self.frames) do
		self:FadeTime(frame)
	end
end

table.insert(PhanxChat.RunOnLoad, PhanxChat.SetFadeTime)
table.insert(PhanxChat.RunOnProcessFrame, PhanxChat.FadeTime)