local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")

local bar = { }

function bar.init (beautiful)
	--Bar for each screen connect
	awful.screen.connect_for_each_screen(
		function(s)
			-- Each screen has its own tag table.
			awful.tag(awful.util.tags.names, s, awful.util.tags.layouts)

			-- Create a promptbox for each screen
			s.mypromptbox = awful.widget.prompt()
			-- Create an imagebox widget which will contain an icon indicating which layout we're using.
			-- We need one layoutbox per screen.
			s.mylayoutbox = awful.widget.layoutbox(s)
			s.mylayoutbox:buttons(
				gears.table.join(
					awful.button({ }, 1, function () awful.layout.inc(1) end),
					awful.button({ }, 3, function () awful.layout.inc(-1) end),
					awful.button({ }, 4, function () awful.layout.inc(1) end),
					awful.button({ }, 5, function () awful.layout.inc(-1) end)
				)
			)

			-- Create taglist widget
			s.mytaglist = awful.widget.taglist(
				s,
				awful.widget.taglist.filter.all,
				require("bindings.taglist_buttons")
			)

			-- Create tasklist widget
			s.mytasklist = awful.widget.tasklist(
				s,
				awful.widget.tasklist.filter.currenttags,
				require("bindings.tasklist_buttons")
			)

			-- Create the wibox
			s.mywibox = awful.wibar({
				position = beautiful.bar_position,
				screen = s,
				height = beautiful.bar_height
			})

			-- Add widgets to the wibox
			s.mywibox:setup {
			layout = wibox.layout.align.horizontal,
			{
				-- Left widgets
				layout = wibox.layout.fixed.horizontal,
				--TODO home widget button,
				s.mytaglist,
				s.mypromptbox,
				wibox.widget.textbox(' '),
			},
			-- Middle widget
			s.mytasklist,
			{
				-- Right widgets
				layout = wibox.layout.fixed.horizontal,
				-- require("widgets.keyboard_layout"),
				wibox.widget.textbox(' '),
				--wibox.widget.systray(),
				require("widgets.textclock"),
				s.mylayoutbox,
			},
		}
		end
	)
end

return bar
