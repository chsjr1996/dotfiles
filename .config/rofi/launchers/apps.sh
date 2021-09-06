#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="$HOME/.config/rofi/themes"
theme="style_apps"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
