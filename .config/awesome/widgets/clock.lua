local wibox = require("wibox")

function clock()
    return {
        {
            wibox.widget.textclock('%H:%M'),
            margins = 1,
            widget  = wibox.container.margin,
        },
        direction = "west",
        widget    = wibox.container.rotate,
    }
end

return clock

