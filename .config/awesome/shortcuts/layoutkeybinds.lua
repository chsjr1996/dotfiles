local awful = require("awful")

local function layoutkeybinds()
  awful.keyboard.append_global_keybindings({
      awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end,
                {description = "swap with next client by index", group = "client"}),
      awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end,
                {description = "swap with previous client by index", group = "client"}),

      awful.key({ modkey,           }, "u", awful.client.urgent.jumpto,
                {description = "jump to urgent client", group = "client"}),

      awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact( 0.05)          end,
                {description = "increase master width factor", group = "layout"}),
      awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.05)          end,
                {description = "decrease master width factor", group = "layout"}),

      awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1, nil, true) end,
                {description = "increase the number of master clients", group = "layout"}),
      awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1, nil, true) end,
                {description = "decrease the number of master clients", group = "layout"}),

      awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1, nil, true)    end,
                {description = "increase the number of columns", group = "layout"}),
      awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1, nil, true)    end,
                {description = "decrease the number of columns", group = "layout"}),

      awful.key({ modkey, "Mod1"          }, "p", function () awful.layout.inc( 1)                end,
                {description = "select next", group = "layout"}),
  })
end

return layoutkeybinds

