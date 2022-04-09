-- {{{ Main libs
-- Core
pcall(require, "luarocks.loader")
local awful      = require("awful")
require("awful.autofocus")

--- {{{ Globals
terminal = os.getenv("TERMINAL") or "kitty"
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal .. " -e " .. editor
modkey = "Mod4"
--- }}}

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
local utilsbinds       = require("shortcuts.utilskeybinds")
-- }}}

--- {{{ Signals
screen.connect_signal("request::desktop_decoration", function(s)
    local default_layout = awful.layout.layouts[2]

    if screen.count() > 1 then
      default_layout = awful.layout.layouts[1]
    end

    awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, default_layout)

    mainbar(s)
end)
--- }}}

-- {{{ mouse/keybinds
mousebinds()
awesomekeybinds()
tagkeybinds()
launcherkeybinds()
clientkeybinds()
layoutkeybinds()
rofikeybinds()
systembinds()
multimediabinds()
utilsbinds()
-- }}}

