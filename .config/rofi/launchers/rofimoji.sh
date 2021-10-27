#!/usr/bin/env bash

export PATH="$HOME/.local/bin:$PATH"

themesDir="$HOME/.config/rofi/themes"
theme="style_gruvbox"

rofimoji --selector rofi --selector-args="-theme $themesDir/$theme"