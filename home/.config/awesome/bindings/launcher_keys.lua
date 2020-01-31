local awful = require("awful")
local gears = require("gears")
local m = require("bindings.modkeys")
local user = require("user")

return gears.table.join (
	--[[
	-- Start screen
	awful.key({ superkey }, "F1",
		function()
			start_screen_show()
		end,
		{ description = "start screen", group = "Custom" }
	),
	-- App drawer
	awful.key({ superkey }, "a",
		function()
			app_drawer_show()
		end,
		{ description = "App drawer", group = "custom" }
	),
	--]]
	-- Run
	awful.key({ m.super }, "r",
		function () awful.screen.focused().mypromptbox:run() end,
		{ description = "Run prompt", group = "Launcher" }
	),
	-- User preferred applications
	awful.key({ m.super }, "Return",
		function () awful.spawn(user.terminal) end,
		{ description = "Open terminal", group = "Launcher" }
	),
	--[[
	awful.key({ m.super, m.shift }, "Return",
		function () awful.spawn(user.terminal) end,
		{ description = "Open floating terminal", group = "Launcher" }
	),
	--]]
	awful.key({ m.super }, "f",
		function () awful.spawn(user.file_manager) end,
		{ description = "Open file manager", group = "Launcher" }
	),
	awful.key({ m.super }, "e",
		function () awful.spawn(user.editor) end,
		{ description = "Open editor", group = "Launcher" }
	),
	awful.key({ m.super }, "i",
		function () awful.spawn(user.image_editor) end,
		{ description = "Open image editor", group = "Launcher" }
	),
	awful.key({ m.super }, "m",
		function () awful.spawn(user.music_client) end,
		{ description = "Open music client", group = "Launcher" }
	),
	awful.key({ m.super }, "l",
		function () awful.spawn(user.email_client) end,
		{ description = "Open e-mail client", group = "Launcher" }
	),
	awful.key({ m.super }, "b",
		function () awful.spawn(user.browser) end,
		{ description = "Open browser", group = "Launcher" }
	)
)
