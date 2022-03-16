local awful   = require("awful")
local menubar = require("menubar")

local function menubar_geometry_setup()
  screen.connect_signal("request::desktop_decoration", function(s)
    local x_offset = 10
    local y_offset = x_offset
    menubar.geometry = {
      x      = x_offset,
      y      = y_offset,
      width  = s.geometry.width - (x_offset * 2),
      height = 25,
    }
  end)
end

local function launcherkeybinds()
    menubar_geometry_setup()
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

