-- Standard Awesome library
local gears = require("gears")
local awful = require("awful")
-- Custom Local Library
-- local titlebar = require("anybox.titlebar")

local _M = {}
local modkey = RC.vars.modkey
function _M.get()
	local xf86keys = {
		awful.key({}, "XF86AudioPlay", function()
			awful.util.spawn("playerctl play-pause")
		end),
		awful.key({}, "XF86AudioStop", function()
			awful.util.spawn("playerctl stop")
		end),
		awful.key({}, "XF86AudioNext", function()
			awful.util.spawn("playerctl next")
		end),
		awful.key({}, "XF86AudioPrev", function()
			awful.util.spawn("playerctl previous")
		end),
		awful.key({}, "XF86AudioRaiseVolume", function()
			awful.util.spawn("amixer -q sset Master 3%+")
		end),
		awful.key({}, "XF86AudioLowerVolume", function()
			awful.util.spawn("amixer -q sset Master 3%-")
		end),
		awful.key({}, "XF86AudioMute", function()
			awful.util.spawn("amixer -q sset Master toggle")
		end),
		awful.key({}, "XF86MonBrightnessUp", function()
			awful.util.spawn("brightnessctl s 5%+")
		end),
		awful.key({}, "XF86MonBrightnessDown", function()
			awful.util.spawn("brightnessctl s 5%-")
		end),
		awful.key({}, "Print", function()
			awful.util.spawn("flameshot gui")
		end),
	}
	return xf86keys
end

return setmetatable({}, {
	__call = function(_, ...)
		return _M.get()
	end,
})
