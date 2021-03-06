local DEBUG = false

local function debug(...)
	if not DEBUG then return end
	print(...)
end

dongerbot:hook("OnTick", function()
end)

dongerbot:hook("OnServerVersion", function(event)
	debug("OnServerVersion", event)
end)

dongerbot:hook("OnServerReject", function(event)
	debug("OnServerReject", event)
end)

dongerbot:hook("OnServerSync", function(event)
	debug("OnServerSync", event)
end)

dongerbot:hook("OnClientPing", function(event)
	--debug("OnClientPing", event)
end)

dongerbot:hook("OnServerPing", function(event)
	--debug("OnServerPing", event)
end)

dongerbot:hook("OnChannelRemove", function(channel)
	debug("OnChannelRemove", channel)
end)

dongerbot:hook("OnChannelState", function(channel)
	debug("OnChannelState", channel)
end)

dongerbot:hook("OnUserRemove", function(event)
	debug("OnUserRemove", event)
end)

dongerbot:hook("OnUserConnected", function(event)
	debug("OnUserConnected", event)
end)

dongerbot:hook("OnUserState", function(event)
	debug("OnUserState", event)
end)

dongerbot:hook("OnUserChannel", function(event)
	debug("OnUserChannel", event)
end)

dongerbot:hook("OnMessage", function(event)
	debug("OnMessage", event)
end)

dongerbot:hook("OnPermissionDenied", function(event)
	debug("OnPermissionDenied", event)
end)

dongerbot:hook("OnCodecVersion", function(event)
	debug("OnCodecVersion", event)
end)

dongerbot:hook("OnUserStats", function(event)
	--debug("OnUserStats", event)
end)

dongerbot:hook("OnServerConfig", function(event)
	debug("OnServerConfig", event)
end)

dongerbot:hook("OnAudioFinished", function()
	debug("OnAudioFinished")
end)