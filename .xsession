#!/bin/bash

xset -dpms
xset s off
xset s noblank
chromium-browser --kiosk --disable-session-crashed-bubble --noerrors --incognito --disable-infobars --app https://www.iamresponding.com/v3/Pages/Default.aspx & exec matchbox-window-manager

