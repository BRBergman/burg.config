#!/bin/bash

#CURRENTWS= hyprctl dispatch movetoworkspacesilent "+0,class:.protonvpn-app-wrapped"

#SPECIALVPNWS= hyprctl dispatch movetoworkspacesilent "special:vpn,class:.protonvpn-app-wrapped"

#echo $CURRENTWS
protoncurrentpage=$(hyprctl -j clients | jq 'map(select(.class == "proton.vpn.app.gtk"))[0].workspace.id')
usercurrentpage=$(hyprctl -j activeworkspace | jq '.id')
if [ "$protoncurrentpage" -eq "$usercurrentpage" ]; then
#hyprctl dispatch movetoworkspacesilent "special:vpn,class:proton.vpn.app.gtk"
hyprctl dispatch 'hl.dsp.window.move({ workspace = "special:vpn", follow = false,window = "class:proton.vpn.app.gtk" })'
else
hyprctl dispatch 'hl.dsp.window.move({ workspace = "+0", follow = false,window = "class:proton.vpn.app.gtk" })'
 #hyprctl dispatch movetoworkspacesilent "+0,class:proton.vpn.app.gtk"

fi
