local awful = require("awful")

local l = awful.layout.suit

-- Tags and default layouts for those tags
return {
	names = {
		" 1 ", -- primary
		" 2 ", -- secondary
		" 3 ", -- browse
		" 4 ", -- chat
		" 5 ", -- misc1
		" 6 ", -- misc2
		--" 7 ", -- misc3
		--" 8 ", -- misc4
		--" 9 ", -- misc5
	},
	layouts = {
		l.tile,
		l.tile,
		l.max,
		l.spiral.dwindle,
		l.floating,
	},
}
