local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup").widget
local user = require("user")
local helpers = require("helpers")

return awful.menu({
	items = {
		{
			"awesome",
			{
				{ "hotkeys", function() return false, hotkeys_popup.show_help end },
				{ "manual", user.terminal .. " -e man awesome" },
				{ "edit config", user.editor .. " " .. awesome.conffile },
				{ "restart", awesome.restart },
				{ "quit", function() helpers.quit() end }
			},
		},
		{ "open terminal", user.terminal }
	}
})
