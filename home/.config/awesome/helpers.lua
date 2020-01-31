local awful = require("awful")
local gears = require("gears")

local helpers = { }

function helpers.client_menu_toggle_fn ()
	local instance = nil

	return function ()
		if instance and instance.wibox.visible then
			instance:hide()
			instance = nil
		else
			instance = awful.menu.clients({ theme = { width = 250 } })
		end
	end
end

function helpers.set_wallpaper (s, wallpaper)
	if wallpaper then
		-- If wallpaper is a function, call it with the screen
		if type(wallpaper) == "function" then
			wallpaper = wallpaper(s)
		end
		gears.wallpaper.maximized(wallpaper, s, true)
	end
end

-- Brightness
function helpers.adjust_brightness (amount)
	--TODO
end

-- Volume
function helpers.get_volume ()
	--TODO
	return 0
end

function helpers.set_volume (v)
	--TODO
end

function helpers.adjust_volume (amount)
	--TODO
end

function helpers.save_volume()
	--TODO
end

function helpers.load_volume()
	--TODO
end

function helpers.toggle_mute()
	if 0 == helpers.get_volume() then
		helpers.load_volume()
	else
		helpers.save_volume()
		helpers.set_volume(0)
	end
end

-- Quit
function helpers.quit()
	--TODO
	awesome.quit()
end

return helpers
