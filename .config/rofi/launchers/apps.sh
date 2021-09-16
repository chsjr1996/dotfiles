#!/usr/bin/env bash

dir="$HOME/.config/rofi/themes"
theme="style_sidebar"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
