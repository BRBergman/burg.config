#!/bin/bash

#CURRENTWS= hyprctl dispatch movetoworkspacesilent "+0,class:.protonvpn-app-wrapped"

#SPECIALVPNWS= hyprctl dispatch movetoworkspacesilent "special:vpn,class:.protonvpn-app-wrapped"

#echo $CURRENTWS
protoncurrentpage=$(hyprctl -j clients | jq 'map(select(.class == ".protonvpn-app-wrapped"))[0].workspace.id')
usercurrentpage=$(hyprctl -j activeworkspace | jq '.id')
if [ "$protoncurrentpage" -eq "$usercurrentpage" ]; then
hyprctl dispatch movetoworkspacesilent "special:vpn,class:.protonvpn-app-wrapped"
else
 hyprctl dispatch movetoworkspacesilent "+0,class:.protonvpn-app-wrapped"

fi
