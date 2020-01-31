local awful = require("awful")

local l = awful.layout.suit

--[[ Defaults
floating
tile
tile.left
tile.bottom
tile.top
fair
fair.horizontal
spiral
spiral.dwindle
max
max.fullscreen
magnifier
corner.nw
corner.ne
corner.sw
corner.se
--]]

return {
	l.tile,
	l.fair,
	l.spiral.dwindle,
	l.max,
	l.floating,
}
