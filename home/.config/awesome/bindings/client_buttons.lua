local awful = require("awful")
local gears = require("gears")
local m = require("bindings.modkeys")

return gears.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ m.super }, 1, awful.mouse.client.move),
    awful.button({ m.super }, 3, awful.mouse.client.resize)
)
