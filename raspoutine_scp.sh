#!/bin/bash

# Update splashscreen
scp ./splash.png $1:/usr/share/plymouth/themes/pix

# Firefox config
scp ./autoconfig.js $1:/usr/lib/firefox-esr/defaults/pref
scp ./firefox.cfg $1:/usr/lib/firefox-esr/

# Autostart config
scp ./autostart $1:/etc/xdg/lxsession/LXDE-pi