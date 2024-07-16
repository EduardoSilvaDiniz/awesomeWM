local home = os.getenv("HOME")

local _M = {
	terminal = "alacritty",
	modkey = "Mod1",
	editor = os.getenv("EDITOR") or "nvim",
	editor_cmd = "alacritty" .. " -e " .. "nvim",
	--	wallpaper = nil,
}

return _M
