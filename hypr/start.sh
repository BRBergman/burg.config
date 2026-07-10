#!/usr/bin/env bash

swww-daemon&

#swww img ~/.config/hypr/wallpaper.jpg&
swww img ~/Pictures/nix-Wallpaper.png&

nm-applet --indicator &

waybar &
protonvpn-app&
dunst
