local awful = require("awful")

client.connect_signal("request::manage", function(client, context)
    if client.floating and context == "new" then
        client.placement = awful.placement.centered
    end
end)

