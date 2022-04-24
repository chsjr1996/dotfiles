local awful   = require("awful")
local menubar = require("menubar")

local function menubar_geometry_setup()
  local current_screen = awful.screen.focused()
  local vert_bar_width = 35;
  menubar.geometry = {
    x      = vert_bar_width,
    y      = 0,
    width  = current_screen.geometry.width - vert_bar_width,
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

