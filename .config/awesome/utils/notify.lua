local beautiful = require("beautiful")
local notification_id = nil

local function notify(title, text)
  local notification = naughty.instance.notify(
    {
      title = title,
      text = text,
      replaces_id = notification_id,
      width = beautiful.notification_width,
      height = beautiful.notification_height
    }
  )
  notification_id = notification.id
end

return notify

