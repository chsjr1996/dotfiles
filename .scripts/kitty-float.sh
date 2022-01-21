#! /bin/sh

case $1 in
    top)
        kitty -T=System\ monitor --class=kitty-float -e btop
        ;;
    sensors)
        kitty -T=Sensors --class=kitty-float sh -c "sensors; echo Press ENTER to quit; read"
        ;;
esac
