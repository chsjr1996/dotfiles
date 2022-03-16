local awful = require("awful")

awful.spawn.with_shell("redshift -P -O 2800")
awful.spawn.with_shell("picom --experimental-backends --config ~/.config/picom/picom.conf")
awful.spawn.with_shell("sleep 1 && nitrogen --restore")
awful.spawn.with_shell("numlockx on")
awful.spawn.with_shell("clipmenud")
awful.spawn.with_shell("flashfocus")
awful.spawn.with_shell("pgrep -x xcape > /dev/null || xcape -e 'Super_L=Super_L|space'")

