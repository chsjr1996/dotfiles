local awful = require("awful")

awful.spawn.with_shell("redshift -P -O 3500")
awful.spawn.with_shell("picom --experimental-backends --config ~/.config/picom/picom_awwm.conf")
awful.spawn.with_shell("sleep 1 && nitrogen --restore")

