local awful   = require("awful")
local menubar = require("menubar")

local function menubar_geometry_setup()
  local current_screen = awful.screen.focused()
  local x_offset = 10
  local y_offset = x_offset
  menubar.geometry = {
    x      = x_offset,
    y      = y_offset,
    width  = current_screen.geometry.width - (x_offset * 2),
    height = 25,
  }
end

local function launcherkeybinds()
    menubar.utils.terminal = terminal

    awful.keyboard.append_global_keybindings({
        awful.key({ modkey, "Shift" }, "r",
                  function ()
                      menubar.refresh()
                  end,
                  {description = "refresh menubar", group = "launcher"}),
        awful.key({ modkey }, "space",
                  function()
                      menubar_geometry_setup()
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

