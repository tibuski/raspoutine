#!/bin/bash

# Launch remote install commands
ssh $1 < ./remoteInstall.sh

# Copy xinitrc
scp ./xinitrc $1:~
ssh -t $1 sudo mv ~/xinitrc /etc/X11/xinit

# Enable or disable screen blanking.
ssh -t $1 sudo raspi-config nonint do_blanking 1

# Reboot system
ssh -t $1 "sudo reboot now"