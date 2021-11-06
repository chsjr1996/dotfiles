local wibox = require("wibox")

function systray()
    return {
        wibox.widget.systray(),
        margins = 5,
        widget  = wibox.container.margin,
    }
end

return systray

