local gears = require("gears")
local gfs = gears.filesystem
local themes_path = gfs.get_themes_dir()
local icon_dir = gfs.get_configuration_dir() .. "/icons"

local icons = { }

function icons.init (theme)
	-- Bar select indicators for taglist
	--taglist_select_indicator = icon_dir .. "/taglist_bg_top.png"
	--theme.taglist_squares_sel = gears.color.recolor_image(taglist_select_indicator, theme.fg_focus)

	-- Bar select indicators for tasklist
	local tasklist_select_indicator = icon_dir .. "/tasklist_bg_bottom.png"
	theme.tasklist_bg_image_focus = gears.color.recolor_image(tasklist_select_indicator, theme.fg_focus)

	-- Layout
	--theme.layout_fairh = gears.color.recolor_image(icon_dir .. "/layout_fairh.png", theme.fg_normal)
	theme.layout_fairv = gears.color.recolor_image(icon_dir .. "/layout_fairv.png", theme.fg_normal)
	theme.layout_floating  = gears.color.recolor_image(icon_dir .. "/layout_floating.png", theme.fg_normal)
	--theme.layout_magnifier = gears.color.recolor_image(icon_dir .. "/layout_magnifier.png", theme.fg_normal)
	theme.layout_max = gears.color.recolor_image(icon_dir .. "/layout_max.png", theme.fg_normal)
	--theme.layout_fullscreen = gears.color.recolor_image(icon_dir .. "/layout_fullscreen.png", theme.fg_normal)
	--theme.layout_tilebottom = gears.color.recolor_image(icon_dir .. "/layout_tilebottom.png", theme.fg_normal)
	--theme.layout_tileleft = gears.color.recolor_image(icon_dir .. "/layout_tileleft.png", theme.fg_normal)
	theme.layout_tile = gears.color.recolor_image(icon_dir .. "/layout_tile.png", theme.fg_normal)
	--theme.layout_tiletop = gears.color.recolor_image(icon_dir .. "/layout_tiletop.png", theme.fg_normal)
	--theme.layout_spiral = gears.color.recolor_image(icon_dir .. "/layout_spiral.png", theme.fg_normal)
	theme.layout_dwindle = gears.color.recolor_image(icon_dir .. "/layout_dwindle.png", theme.fg_normal)
	--theme.layout_cornernw = gears.color.recolor_image(icon_dir .. "/layout_cornernw.png", theme.fg_normal)
	--theme.layout_cornerne = gears.color.recolor_image(icon_dir .. "/layout_cornerne.png", theme.fg_normal)
	--theme.layout_cornersw = gears.color.recolor_image(icon_dir .. "/layout_cornersw.png", theme.fg_normal)
	--theme.layout_cornerse = gears.color.recolor_image(icon_dir .. "/layout_cornerse.png", theme.fg_normal)

	-- Defaults
	theme.menu_submenu_icon = themes_path .. "default/submenu.png"

	-- Define the icon theme for application icons. If not set then the icons
	-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
	theme.icon_theme = nil
end

return icons
