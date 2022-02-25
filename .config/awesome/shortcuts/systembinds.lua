local awful = require("awful")

local function systembinds()
    awful.keyboard.append_global_keybindings({
        -- Volume binds
        awful.key({}, "XF86AudioRaiseVolume",
                  function()
                    awful.spawn.with_shell("pactl set-sink-volume @DEFAULT_SINK@ +5%")
                  end,
                  {description = "increase volume", group = "system"}),
        awful.key({}, "XF86AudioLowerVolume",
                  function()
                    awful.spawn.with_shell("pactl set-sink-volume @DEFAULT_SINK@ -5%")
                  end,
                  {description = "decrease volume", group = "system"}),
        awful.key({}, "XF86AudioMute",
                  function()
                    awful.spawn.with_shell("pactl set-sink-mute @DEFAULT_SINK@ toggle")
                  end,
                  {description = "toggle volume mute", group = "system"}),

        -- Brightness binds
        awful.key({}, "XF86MonBrightnessUp",
                  function()
                    awful.spawn.with_shell("light -A 5")
                  end,
                  {description = "increase bright", group = "system"}),
        awful.key({}, "XF86MonBrightnessDown",
                  function()
                    awful.spawn.with_shell("light -U 5")
                  end,
                  {description = "increase bright", group = "system"}),

        -- Others
        awful.key({}, "Print",
                  function()
                    awful.spawn.with_shell("flameshot gui")
                  end,
                  {description = "increase bright", group = "system"}),
    })
end

return systembinds

