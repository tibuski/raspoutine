#!/bin/bash

# Launch remote install commands
ssh $1 < ./remoteInstall.sh

# Copy files
scp ./startSurf.sh $1:~

# Insert autostart script in /etc/rc.local
ssh -t $1 "sudo sed -i '$ i\sudo xinit /home/tibus/startSurf.sh &' /etc/rc.local"

# Reboot system
ssh -t $1 "sudo reboot now"