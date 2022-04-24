local awful       = require("awful")
local verticalbar = require("modules.verticalbar")

screen.connect_signal("request::desktop_decoration", function(s)
    local default_layout = awful.layout.layouts[2]

    if screen.count() > 1 then
      default_layout = awful.layout.layouts[1]
    end

    awful.tag({ "1", "2", "3", "4"}, s, default_layout)

    verticalbar(s)
end)

