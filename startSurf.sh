#!/bin/sh
xset -dpms # disable DPMS (Energy Star) features.
xset s off # disable screen saver
xset s noblank # don't blank the video device
matchbox-window-manager &
unclutter -idle 0 &
chromium --no-sandbox --kiosk https://centricity.telinduscloud.lu/grafana/d/OTShOOtMz/proximus?orgId=1