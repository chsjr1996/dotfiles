local awful   = require("awful")
local menubar = require("menubar")

function launcherkeybinds()
    menubar.utils.terminal = terminal

    awful.keyboard.append_global_keybindings({
        awful.key({ modkey }, "space",
                  function()
                      menubar.show()
                  end,
                  {description = "show the menubar", group = "launcher"}),
        awful.key({ modkey,           }, "Return",
                  function ()
                      awful.spawn(terminal)
                  end,
                  {description = "open a terminal", group = "launcher"}),
        awful.key({ modkey },            "r",
                  function ()
                      awful.screen.focused().widget_promptbox:run()
                  end,
                  {description = "run prompt", group = "launcher"}),
    })
end

return launcherkeybinds

