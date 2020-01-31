local awful = require("awful")
local gears = require("gears")
local m = require("bindings.modkeys")

return gears.table.join(
	awful.key({ m.super }, "F11",
		function (c)
			c.fullscreen = not c.fullscreen
			c:raise()
		end,
		{ description = "Toggle fullscreen", group = "Client" }
	),
	awful.key({ m.super }, "F4",
		function (c) c:kill() end,
		{ description = "Close", group = "Client" }
	),
	awful.key({ m.super }, "f",
		awful.client.floating.toggle,
		{ description = "Toggle floating", group = "Client" }
	),
	awful.key({ m.super }, "BackSpace",
		function (c) c:swap(awful.client.getmaster()) end,
		{ description = "Move to master", group = "Client" }
	),
	awful.key({ m.super }, "o", -- What
		function (c) c:move_to_screen() end,
		{ description = "Move to screen", group = "Client" }
	),
	awful.key({ m.super }, "t",
		function (c) c.ontop = not c.ontop end,
		{ description = "Toggle keep on top", group = "Client"}
	),
	awful.key({ m.super }, "n",
		function (c)
			-- The client currently has the input focus, so it cannot be
			-- minimized, since minimized clients can't have the focus.
			c.minimized = true
		end,
		{ description = "Minimize", group = "Client" }
	),
	awful.key({ m.super, m.ctrl }, "n",
		function ()
			local c = awful.client.restore()
			-- Focus restored client
			if c then
				client.focus = c
				c:raise()
			end
		end,
		{ description = "Restore minimized", group = "Client" }
	),
	awful.key({ m.super }, "m",
		function (c)
			c.maximized = not c.maximized
			c:raise()
		end,
		{ description = "Toggle maximize", group = "Client" }
	),
	awful.key({ m.super, m.ctrl }, "m",
		function (c)
			c.maximized_vertical = not c.maximized_vertical
			c:raise()
		end,
		{ description = "Toggle maximize vertically", group = "Client" }
	),
	awful.key({ m.super, m.shift }, "m",
		function (c)
			c.maximized_horizontal = not c.maximized_horizontal
			c:raise()
		end,
		{ description = "Toggle maximize horizontally", group = "Client" }
	)
)
