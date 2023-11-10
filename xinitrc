#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
. /etc/X11/Xsession

# Disable any form of screen saver / screen blanking / power management
xset s off
xset s noblank
xset -dpms

# Start Chromium in kiosk mode
exec sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/'Local State'
exec sed -i 's/"exited_cleanly":false/"exited_cleanly":true/; s/"exit_type":"[^"]\+"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences
exec chromium-browser --no-sandbox --disable-infobars --kiosk 'https://centricity.telinduscloud.lu/grafana/d/OTShOOtMz/proximus?orgId=1'
