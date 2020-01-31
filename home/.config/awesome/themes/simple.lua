--! local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local theme = { }

-- Wallpaper
theme.wallpaper = "/usr/share/wallpaper/trees.jpg"
--theme.wallpaper = "/usr/share/wallpaper/water_mountains.jpg"

-- Font
theme.font = "sans 8"

-- Background
theme.bg_normal = "#151718"
theme.bg_focus = theme.bg_normal
theme.bg_urgent = "#bf0000"
theme.bg_minimize = theme.bg_normal
theme.bg_systray = theme.bg_normal

theme.fg_normal = "#bfbfbf"
theme.fg_focus = "#ffffff"
theme.fg_urgent = "#000000"
theme.fg_minimize = "#808080"

-- Gaps
theme.screen_margin = dpi(9)
theme.useless_gap   = dpi(9)

-- Borders
theme.border_width  = dpi(1)
theme.border_normal = theme.fg_minimize
theme.border_focus  = theme.fg_focus
theme.border_marked = theme.fg_urgent
--theme.border_color = theme.border_normal

-- Notifications
theme.notification_font = theme.font
theme.notification_bg = theme.bg_normal
theme.notification_fg = theme.fg_normal
theme.notification_margin = theme.screen_margin * 2
theme.notification_border_width = dpi(0)

-- Hotkeys
theme.hotkeys_font = "monospace Bold 9"
theme.hotkeys_modifiers_fg = theme.fg_focus

-- Menu
theme.menu_height = dpi(16)
theme.menu_width = dpi(140)

-- Bar
theme.bar_position = "top"
theme.bar_height = dpi(24)
theme.bar_select_indicator = true

-- Tasklist
theme.tasklist_plain_task_name = true
theme.tasklist_disable_icon = true

return theme
