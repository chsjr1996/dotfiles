local awful = require("awful")

local rofiLaunchersDir = os.getenv("HOME").."/.config/rofi/launchers"

function rofikeybinds()
    awful.keyboard.append_global_keybindings({
        awful.key({ modkey,           }, "F1",
                  function()
                      awful.spawn.with_shell(rofiLaunchersDir.."/clipboard.sh")
                  end,
                  {description = "show clipboard menu", group = "rofi"}),
        awful.key({ modkey,           }, "F2",
                  function()
                      awful.spawn.with_shell(rofiLaunchersDir.."/roficalc.sh")
                  end,
                  {description = "show calc menu", group = "rofi"}),
        awful.key({ modkey,           }, "F3",
                  function()
                      awful.spawn.with_shell(rofiLaunchersDir.."/rofimoji.sh")
                  end,
                  {description = "show emoji menu", group = "rofi"}),
        awful.key({ modkey,           }, "F4",
                  function()
                      awful.spawn.with_shell(rofiLaunchersDir.."/rofilocate.sh")
                  end,
                  {description = "show locate menu", group = "rofi"}),
        awful.key({ modkey,           }, "F5",
                  function()
                      awful.spawn.with_shell(rofiLaunchersDir.."/rofifilebrowser.sh")
                  end,
                  {description = "show locate menu", group = "rofi"}),
        awful.key({ modkey,           }, "w",
                  function ()
                    awful.spawn.with_shell(rofiLaunchersDir.."/window.sh")
                  end,
                  {description = "show main menu", group = "rofi"}),
    }) 
end

return rofikeybinds

