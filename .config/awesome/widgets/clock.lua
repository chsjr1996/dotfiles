local wibox = require("wibox")

function clock()
    return wibox.widget.textclock('%H:%M')
end

return clock

