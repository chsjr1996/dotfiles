local brightness_widget = require("awesome-wm-widgets.brightness-widget.brightness")
local wibox             = require("wibox")

function brightness()
    return {
        {
            brightness_widget(),
            margins = 10,
            widget  = wibox.container.margin,
        },
        direction = "west",
        widget    = wibox.container.rotate,
    }
end

return brightness

