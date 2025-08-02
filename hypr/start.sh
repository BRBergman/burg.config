#!/usr/bin/env bash

swww-daemon&

swww img ~/.config/hypr/wallpaper.jpg&

nm-applet --indicator &

waybar &

dunst
