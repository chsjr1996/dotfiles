local awful             = require("awful")
local wibox             = require("wibox")

-- Left widgets
local widget_taglist    = require("widgets.taglist")

-- Middle widgets
local widget_tasklist   = require("widgets.tasklist")

-- Right widgets
local widget_clock      = require("widgets.clock")
local widget_battery    = require("widgets.battery")
local widget_brightness = require("widgets.brightness")
local widget_volume     = require("widgets.volume")
local widget_rammemory  = require("widgets.rammemory")
local widget_systray    = require("widgets.systray")

function mainbar(screen)
    screen.verticalbar    = awful.wibar {
        position     = "left",
        screen       = screen,
        width        = 35,
        bg           = "#000000",
        widget       = {
            layout = wibox.layout.align.vertical,
            { -- Left widgets
                layout = wibox.layout.fixed.vertical,
                widget_taglist(screen),
                {
                    screen.widget_promptbox,
                    direction = "west",
                    widget = wibox.container.rotate,
                }
            },
            -- Middle widget
            widget_tasklist(screen),
            { -- Right widgets
                {
                    layout = wibox.layout.fixed.horizontal,
                    widget_clock(),
                    widget_battery(),
                    widget_brightness(),
                    widget_volume(),
                    widget_rammemory(),
                    widget_systray(),
                },
                direction = "east",
                widget = wibox.container.rotate,
            },
        }
    }
end

return mainbar

