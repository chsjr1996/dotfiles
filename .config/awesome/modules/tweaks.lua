local gears = require("gears")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi

-- Tweak configs
local enable_rounded_corners = false
local enable_useless_gap     = true

-- Theme
local theme_path = string.format("%s/.config/awesome/themes/%s/theme.lua", os.getenv("HOME"), "default")
beautiful.init(theme_path)

-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", function(c)
    c:activate { context = "mouse_enter", raise = false }
end)

-- Rounded corners
if enable_rounded_corners then
    client.connect_signal("manage", function(c)
        c.shape = function(cr,w,h)
            gears.shape.rounded_rect(cr,w,h, dpi(5))
        end
    end)
end

-- Gaps
if enable_useless_gap then
    beautiful.useless_gap = 5
    beautiful.gap_single_client = true
end
