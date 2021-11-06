local volume_widget = require('awesome-wm-widgets.volume-widget.volume')
local wibox         = require("wibox")

function volume()
    return {
        {
            volume_widget {
                type = "arc"
            },
            margins = 10,
            widget  = wibox.container.margin,
        },
        direction = "west",
        widget    = wibox.container.rotate,
    }
end

return volume

