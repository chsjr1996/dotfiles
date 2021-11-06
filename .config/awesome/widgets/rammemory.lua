local ram_widget = require("awesome-wm-widgets.ram-widget.ram-widget")
local wibox      = require("wibox")

function rammemory()
    return {
        ram_widget(),
        margins = 3,
        widget  = wibox.container.margin,
    }
end

return rammemory

