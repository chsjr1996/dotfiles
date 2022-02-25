local notification_id = nil

local function notify(title, text)
  local notification = naughty.instance.notify(
    {
      title = title,
      text = text,
      replaces_id = notification_id
    }
  )
  notification_id = notification.id
end

return notify

