#!/bin/bash

# Launch remote install commands
ssh $1 < ./remoteinstall.sh

# Copy files
scp ./startMidori.sh $1