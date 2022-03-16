-- {{{ Main libs
-- Core
pcall(require, "luarocks.loader")
local awful      = require("awful")
local wibox      = require("wibox")
require("awful.autofocus")

-- {{{ Modules
require("modules.layouts")
require("modules.autostart")
require("modules.tweaks")
require("modules.rules")

naughty          = require("modules.naughty")
local mainbar    = require("modules.mainbar")
-- }}}

-- {{{ Shortcuts
local awesomekeybinds  = require("shortcuts.awesomekeybinds")
local tagkeybinds      = require("shortcuts.tagkeybinds")
local launcherkeybinds = require("shortcuts.launcherkeybinds")
local clientkeybinds   = require("shortcuts.clientkeybinds")
local layoutkeybinds   = require("shortcuts.layoutkeybinds")
local rofikeybinds     = require("shortcuts.rofikeybinds")
local mousebinds       = require("shortcuts.mousebinds")
local systembinds      = require("shortcuts.systembinds")
local multimediabinds  = require("shortcuts.multimediabinds")

terminal = "kitty"
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal .. " -e " .. editor
modkey = "Mod4"
-- }}}

-- {{{ Wibar
local mainbar_enabled = true

screen.connect_signal("request::desktop_decoration", function(s)
    local default_layout = awful.layout.layouts[3]

    if screen.count() > 1 then
      default_layout = awful.layout.layouts[1]
    end

    awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, default_layout)

    if mainbar_enabled then
        s.widget_promptbox = require("widgets.promptbox")()
        mainbar(s)
    end
end)
-- }}}

--- {{{ Signals

--- }}}

-- {{{ Mouse bindings
mousebinds()
-- }}}

-- {{{ Key bindings
awesomekeybinds()
tagkeybinds()
launcherkeybinds()
clientkeybinds()
layoutkeybinds()
rofikeybinds()
systembinds()
multimediabinds()
-- }}}

