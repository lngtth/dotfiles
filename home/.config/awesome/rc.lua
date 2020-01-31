-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
--require("awful.hotkeys_popup.keys")

-- Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
	naughty.notify({
		preset = naughty.config.presets.critical,
		title = "Oops, there were errors during startup!",
		text = awesome.startup_errors
	})
end

-- Handle runtime errors after startup
do
	local in_error = false
	awesome.connect_signal(
		"debug::error",
		function (err)
			-- Make sure we don't go into an endless error loop
			if in_error then return end
			in_error = true

			naughty.notify({
				preset = naughty.config.presets.critical,
				title = "Oops, an error happened!",
				text = tostring(err)
			})
			in_error = false
		end
	)
end

-- Initialize theme
beautiful.init(os.getenv("HOME") .. "/.config/awesome/themes/simple.lua")

-- Icons
icons = require("icons")
icons.init(beautiful)

-- Menu
mymainmenu = require("menu")
menubar = require("menubar")

-- Key bindings
root.keys(
	gears.table.join(
		require("bindings.awesome_keys"),
		require("bindings.launcher_keys"),
		require("bindings.navigation_keys"),
		require("bindings.brightness_volume_keys"),
		require("bindings.layout_keys")
	)
)

-- Button bindings
root.buttons(require("bindings.desktop_buttons"))

-- Rules
rules = require("rules")
awful.rules.rules = rules.init(beautiful)

-- Layouts and tags
awful.layout.layouts = require("layouts")
awful.util.tags = require("tags")

-- Bar
local bar = require("bar")
bar.init(beautiful)

-- Signals
local signals = require("signals")
signals.init(beautiful)

-- No titlebars
--! local titlebars = require("titlebars")
--! titlebars.init(beautiful)
