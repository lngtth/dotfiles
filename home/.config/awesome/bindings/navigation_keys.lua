local awful = require("awful")
local gears = require("gears")
local m = require("bindings.modkeys")

navigation_keys = gears.table.join(
	-- Tag navigation
	awful.key({ m.super }, "Up",
		awful.tag.viewprev,
		{ description = "View previous tag", group = "Navigation" }
	),
	awful.key({ m.super }, "Down",
		awful.tag.viewnext,
		{ description = "View next tag", group = "Navigation" }
	),
	awful.key({ m.super }, "z",
		awful.tag.history.restore,
		{ description = "View next tag in history", group = "Navigation" }
	),

	-- Client navigation
	awful.key({ m.super }, "Right",
		function ()
			awful.client.focus.byidx(1)
		end,
		{ description = "Focus next client by index", group = "Navigation" }
	),
	awful.key({ m.super }, "Left",
		function ()
			awful.client.focus.byidx(-1)
		end,
		{ description = "Focus previous client by index", group = "Navigation"}
	),
	awful.key({ m.super }, "Tab",
		function ()
			awful.client.focus.history.previous()
			if client.focus then
				client.focus:raise()
			end
		end,
		{ description = "Focus last client in history", group = "Navigation" }
	),
	awful.key({ m.super }, "u",
		function ()
			local uc = awful.client.urgent.get()
			if nil == uc then
				awful.tag.history.restore()
			else
				awful.client.urgent.jumpto()
			end
		end,
		{ description = "Jump to urgent client (or return to last tag)", group = "Navigation" }
	),

	-- Screen navigation
	awful.key({ m.super, m.ctrl }, "Down",
		function () awful.screen.focus_relative(1) end,
		{ description = "Focus the next screen", group = "Navigation" }
	),
	awful.key({ m.super, m.ctrl }, "Up",
		function () awful.screen.focus_relative(-1) end,
		{ description = "Focus the previous screen", group = "Navigation" }
	)
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it work on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
	local desc_view = ""
	local desc_toggle = ""
	local desc_move = ""
	if 1 == i then
		desc_view_tag = "View tag"
		desc_toggle_tag = "Toggle tag"
		desc_move_client = "Move focused client to tag"
		desc_toggle_client = "Toggle focused client on tag"
	end
	navigation_keys = gears.table.join(
		navigation_keys,
		-- View tag only
		awful.key({ m.super }, "#" .. i + 9,
			function ()
				local screen = awful.screen.focused()
				local tag = screen.tags[i]
				if tag then
					tag:view_only()
				end
			end,
			{ description = desc_view_tag, group = "Navigation" }
		),
		-- Toggle tag display
		awful.key({ m.super, m.ctrl }, "#" .. i + 9,
			function ()
				local screen = awful.screen.focused()
				local tag = screen.tags[i]
				if tag then
					awful.tag.viewtoggle(tag)
				end
			end,
			{ description = desc_toggle_tag, group = "Navigation" }
		),
		-- Move client to tag
		awful.key({ m.super, m.shift }, "#" .. i + 9,
			function ()
				if client.focus then
					local tag = client.focus.screen.tags[i]
					if tag then
						client.focus:move_to_tag(tag)
					end
				end
			end,
			{ description = desc_move_client, group = "Client" }
		),
		-- Toggle tag on focused client
		awful.key({ m.super, m.ctrl, m.shift }, "#" .. i + 9,
			function ()
				if client.focus then
					local tag = client.focus.screen.tags[i]
					if tag then
						client.focus:toggle_tag(tag)
					end
				end
			end,
			{ description = desc_toggle_client, group = "Client" }
		)
	)
end

return navigation_keys
