local awful = require("awful")
local gears = require("gears")
local hotkeys_popup = require("awful.hotkeys_popup").widget
local m = require("bindings.modkeys")
local helpers = require("helpers")

return gears.table.join(
	awful.key({ m.super }, "s",
		hotkeys_popup.show_help,
		{ description="Show help", group="awesome" }
	),
	awful.key({ m.super }, "w",
		function () mymainmenu:show() end,
		{ description = "Show main menu", group = "awesome" }
	),
	awful.key({ m.super, m.ctrl }, "r",
		awesome.restart,
		{ description = "Reload awesome", group = "awesome" }
	),
	awful.key({ m.super }, "Escape",
		function () helpers.quit() end,
		{ description = "Quit awesome", group = "awesome" }
	),
	awful.key({ m.super, m.shift }, "q",
		function () helpers.quit() end,
		{ description = "Quit awesome", group = "awesome" }
	),
	awful.key({ m.super }, "p",
		function() menubar.show() end,
		{ description = "Show the menubar", group = "awesome" }
	),
	awful.key({ m.super, m.shift }, "b",
		function()
			for s in screen do
				s.mywibox.visible = not s.mywibox.visible
			end
		end,
		{ description = "Toggle wibar(s)", group = "awesome" }
	),
	awful.key({ m.super }, "x",
		function ()
			awful.prompt.run {
				prompt = "Run Lua code: ",
				textbox = awful.screen.focused().mypromptbox.widget,
				exe_callback = awful.util.eval,
				history_path = awful.util.get_cache_dir() .. "/history_eval"
			}
		end,
		{ description = "Lua execute prompt", group = "awesome" }
	)
)
