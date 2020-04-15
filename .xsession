#!/bin/bash

xset -dpms
xset s off
xset s noblank

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/'   ~/.config/chromium/Default/Preferences

chromium-browser --kiosk --disable-session-crashed-bubble --check-for-update-interval=0 --noerrors --noerrdialogs --disable-infobars --app https://www.iamresponding.com/v3/Pages/Default.aspx & exec matchbox-window-manager
