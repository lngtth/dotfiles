local awful = require("awful")
local gears = require("gears")
local m = require("bindings.modkeys")

return gears.table.join(
	-- Swap clients
	awful.key({ m.super, m.shift }, "Right",
		function () awful.client.swap.byidx(1) end,
		{ description = "Swap with next client by index", group = "Layout" }
	),
	awful.key({ m.super, m.shift }, "Left",
		function () awful.client.swap.byidx(-1) end,
		{ description = "Swap with previous client by index", group = "Layout" }
	),

	-- Master clients
	awful.key({ m.super }, ".",
		function () awful.tag.incnmaster(1, nil, true) end,
		{ description = "Increase the number of master clients", group = "Layout" }
	),
	awful.key({ m.super }, ",",
		function () awful.tag.incnmaster(-1, nil, true) end,
		{ description = "Decrease the number of master clients", group = "Layout" }
	),
	-- Master width
	awful.key({ m.super, m.shift }, ".",
		function () awful.tag.incmwfact(0.05) end,
		{ description = "Increase master width factor", group = "Layout" }
	),
	awful.key({ m.super, m.shift }, ",",
		function () awful.tag.incmwfact(-0.05) end,
		{ description = "Decrease master width factor", group = "Layout" }
	),

	-- Columns
	awful.key({ m.super }, "=",
		function () awful.tag.incncol(1, nil, true) end,
		{ description = "Increase the number of columns", group = "Layout" }
	),
	awful.key({ m.super }, "-",
		function () awful.tag.incncol(-1, nil, true) end,
		{ description = "Decrease the number of columns", group = "Layout" }
	),

	-- Gaps
	awful.key({ m.super, m.shift }, "=",
		function ()
			awful.tag.incgap(5, nil)
		end,
		{ description = "Increment gaps size for the current tag", group = "Layout" }
	),
	awful.key({ m.super, m.shift }, "-",
		function ()
			awful.tag.incgap(-5, nil)
		end,
		{ description = "Decrement gap size for the current tag", group = "Layout" }
	),

	-- Kill all visible clients for the current tag
	awful.key({ m.super, m.ctrl }, "q",
		function ()
			local clients = awful.screen.focused().clients
			for _, c in pairs(clients) do
				c:kill()
			end
		end,
		{ description = "Kill all visible clients for the current tag", group = "Layout" }
	),

	-- Layouts
	awful.key({ m.super, m.shift }, "Down",
		function () awful.layout.inc(1) end,
		{ description = "Switch to next layout", group = "Layout" }
	),
	awful.key({ m.super, m.shift }, "Up",
		function () awful.layout.inc(-1) end,
		{ description = "Switch to previous layout", group = "Layout" }
	)
)
