-- {{{ Main libs
-- Core
pcall(require, "luarocks.loader")
local awful            = require("awful")
require("awful.autofocus")

-- Third-party modules
require("collision")()
-- }}}

-- {{{ Modules
local mainbar          = require("modules.mainbar") 
local naughty          = require("modules.naughty")

require("modules.layouts")
require("modules.autostart")
require("modules.tweaks")
require("modules.rules")
-- }}}

-- {{{ Shortcuts
local awesomekeybinds  = require("shortcuts.awesomekeybinds")
local tagkeybinds      = require("shortcuts.tagkeybinds")
local launcherkeybinds = require("shortcuts.launcherkeybinds")
local clientkeybinds   = require("shortcuts.clientkeybinds")
local layoutkeybinds   = require("shortcuts.layoutkeybinds")
local rofikeybinds     = require("shortcuts.rofikeybinds") 
local mousebinds       = require("shortcuts.mousebinds")

terminal = "kitty"
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal .. " -e " .. editor
modkey = "Mod4"
-- }}}

-- {{{ Wibar
local mainbar_enabled = true

screen.connect_signal("request::desktop_decoration", function(s)
    awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])

    if mainbar_enabled then
        s.widget_promptbox = require("widgets.promptbox")()
        mainbar(s)
    end
end)
-- }}}

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
-- }}}

