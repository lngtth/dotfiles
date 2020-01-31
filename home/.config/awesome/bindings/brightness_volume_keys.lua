local awful = require("awful")
local gears = require("gears")
local m = require("bindings.modkeys")
local helpers = require("helpers")

return gears.table.join(
	-- Brightness
	awful.key({ }, "XF86MonBrightnessDown",
		function() helpers.adjust_brightness(-10) end,
		{ description = "Decrease brightness", group = "Brightness" }
	),
	awful.key({ }, "XF86MonBrightnessUp",
		function() helpers.adjust_brightness(10) end,
		{ description = "Increase brightness", group = "Brightness" }
	),

	-- Volume with machine dependent controls
	awful.key({ }, "XF86AudioLowerVolume",
		function() helpers.adjust_volume(-5) end,
		{ description = "Lower volume", group = "Audio" }
	),
	awful.key({ }, "XF86AudioRaiseVolume",
		function() helpers.adjust_volume(5) end,
		{ description = "Raise volume", group = "Audio" }
	),
	awful.key({ }, "XF86AudioMute",
		function() helpers.toggle_mute() end,
		{ description = "Toggle volume mute", group = "Audio" }
	),

	-- Volume with brackets and backslash
	awful.key( { m.super }, "[",
		function() helpers.adjust_volume(-5) end,
		{ description = "Lower volume", group = "Audio" }
	),
	awful.key( { m.super }, "]",
		function() helpers.adjust_volume(5) end,
		{ description = "Raise volume", group = "Audio" }
	),
	awful.key( { m.super }, "\\",
		function() helpers.toggle_mute() end,
		{ description = "Toggle volume mute", group = "Audio" }
	)
)
