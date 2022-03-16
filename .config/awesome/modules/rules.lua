local ruled = require("ruled")
local awful = require("awful")

ruled.client.connect_signal("request::rules", function()
    -- All clients will match this rule.
    ruled.client.append_rule {
        id         = "global",
        rule       = { },
        properties = {
            border_width = 0,
            focus        = awful.client.focus.filter,
            raise        = true,
            screen       = awful.screen.preferred,
            placement    = awful.placement.no_overlap+awful.placement.no_offscreen
        }
    }

    -- Floating clients.
    ruled.client.append_rule {
        id       = "floating",
        rule_any = {
            instance = { "copyq", "pinentry" },
            class    = {
                "Arandr", "Gpick", "Gcolor3", "kitty-float", "Pavucontrol"
            },
            name    = {
                "Event Tester",  -- xev.
                "Developer Tools - Vivaldi.*",
            },
            role    = {
                "pop-up",         -- e.g. Google Chrome's (detached) Developer Tools.
            }
        },
        properties = { floating = true }
    }

    -- Add titlebars to normal clients and dialogs
    ruled.client.append_rule {
        id         = "titlebars",
        rule_any   = { type = { "normal", "dialog" } },
        properties = { titlebars_enabled = false      }
    }

    -- Center all floating windows
    ruled.client.append_rule {
      rule_any   = { floating = true },
      except     = {
        class = "Yad"
      },
      properties = {
        placement = awful.placement.centered
      }
    }
end)

client.connect_signal("property::name", function(c)
    if (c.name == "Developer Tools - Vivaldi") then
        c.floating = true
    end
end)
