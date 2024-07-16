-- Standard awesome library

package.path = "/usr/share/awesome/lib/?.lua;" .. package.path
local gears = require("gears")
local awful = require("awful")

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

local _M = {
	globalbuttons = gears.table.join(
		awful.button({}, 3, function()
			mainmenu:toggle()
		end),
		awful.button({}, 4, awful.tag.viewnext),
		awful.button({}, 5, awful.tag.viewprev)
	),
}

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

return _M
