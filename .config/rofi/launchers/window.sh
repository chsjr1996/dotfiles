#!/usr/bin/env bash

themesDir="$HOME/.config/rofi/themes"
theme="style_sidebar"

rofi -no-lazy-grab -show window -modi window -matching glob -theme $themesDir/"$theme"
