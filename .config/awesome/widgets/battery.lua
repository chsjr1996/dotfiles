local battery_widget = require("awesome-wm-widgets.battery-widget.battery")
local wibox          = require("wibox")

function battery()
    return {
        {
            battery_widget(),
            margins = 10,
            widget  = wibox.container.margin,
        },
        direction = "west",
        widget    = wibox.container.rotate,
    }
end

return battery

