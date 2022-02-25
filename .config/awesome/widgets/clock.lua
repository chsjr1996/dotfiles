local spawn = require("awful.spawn")
local wibox = require("wibox")

local popupApp = os.getenv("HOME") .. '/.scripts/popup-calendar.sh --popup'

local function clock()
    local textclock = wibox.widget.textclock('<b>%H:%M</b>')

    textclock:connect_signal("button::press", function()
      spawn.with_shell(popupApp)
    end)

    return {
      layout = wibox.container.margin,
      left = 5,
      textclock
    }
end

return clock

