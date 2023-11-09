#!/bin/bash

# Remove swap
sudo apt-get purge dphys-swapfile -y

# Update / Upgrade
sudo apt-get update
sudo apt-get upgrade -y

# Install PIXEL UI
sudo apt-get install raspberrypi-ui-mods -y

# Activate auto login
raspi-config nonint do_boot_behaviour "B4"

# Install unattended upgrade
sudo apt-get install unattended-upgrades -y

# Install Firefox ESR
sudo apt-get install firefox-esr -y

# Remove Screensaver
sudo apt-get purge xscreensaver -y

# Install unclutter
sudo apt-get  install unclutter-xfixes -y

# Remove unused dependencies
sudo apt-get autoremove -y
sudo apt-get clean -y

# Reboot system
sudo reboot now