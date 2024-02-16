#!/bin/sh

# /etc/X11/xinit/xinitrc
# global xinitrc file, used by all X sessions started by xinit (startx)

# Matchbox WM
matchbox-window-manager -use_titlebar no &

# Hide mouse cursor
unclutter -idle 0 &

# Start Chromium in kiosk mode
exec chromium -incognito https://centricity.telinduscloud.lu/grafana/playlists/play/b0416d85-018e-443c-9017-8475bd3997bf \
 --disable-gpu-driver-bug-workarounds \
 --no-sandbox \
 --kiosk \
 --noerrdialogs \
 --disable-infobars \
 --no-first-run \
 --start-fullscreen \
 --no-crash-upload \
 --disable-breakpad \
 --disable-crash-reporter \
 --incognito \
 --disable-translate \
 --fast \
 --fast-start \
 --disable-features=TranslateUI \
 --disk-cache-dir=/dev/null \
 --disk-cache-size=1 \
 --password-store=basic \
 --window-position=0,0
