# Update / Upgrade
sudo apt-get update
sudo apt-get full-upgrade -y

# xserver
sudo apt-get --no-install-recommends install xserver-xorg xserver-xorg-video-fbdev xinit x11-xserver-utils pciutils xinput xfonts-100dpi xfonts-75dpi xfonts-scalable -y

# Unclutter to remove mouse pointer
sudo apt-get install unclutter -y

# Browser
sudo apt-get install chromium -y

# Remove unused dependencies
sudo apt-get autoremove -y
sudo apt-get clean -y

# Remove swap
sudo apt-get purge dphys-swapfile -y

