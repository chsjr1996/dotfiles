local awful        = require("awful")
local wibox        = require("wibox")
local widget_clock = require("widgets.clock")

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
                screen.widget_taglist,
                screen.widget_promptbox,
                {
                    direction = "west",
                    widget = wibox.container.rotate,
                }
            },
            -- Middle widget
            screen.widget_tasklist,
            { -- Right widgets
                {
                    layout = wibox.layout.fixed.horizontal,
                    {
                        widget_clock(),
                        direction = "west",
                        widget = wibox.container.rotate,
                    },
                    {
                        wibox.widget.systray(),
                        margins = 5,
                        widget = wibox.container.margin,
                    },
                },
                direction = "east",
                widget = wibox.container.rotate,
            },
        }
    }
end

return mainbar

