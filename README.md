# raspoutine
Raspberry Headless Kiosk

* Based on latest 64bit Rasbian Lite image
* Use Raspberry [Pi OS Imager](https://www.raspberrypi.com/software/) for initial SD card install
* Use `X11` with `Matchbox Windows Manager` to display Chromium in Kiosk mode at boot.
* Clone this repository and follow the instructions below.
  
## SD Card

* Since Bookworm, you have to use RPI Imager to write the SD Card, setup Wifi, User, Locale and Keyboard Layout.
* If you forgot to enable SSH in the second Tab, you can create/copy an empty `ssh` file on the root of `bootfs` partition.

## Staging

* Install your public key in the raspberry's authorized_keys with `ssh-copy-id`
* Modify the Web page URL you want to display in `xinitrc`
* Run : `./staging.sh [USER]@[RASPBERRY IP]`
* Raspberry should reboot and open Chromium in Kiosk mode on the url from `xinitrc`

## To Do
* Test with Grafana official kiosk project (also based on Chromium) :  
   https://github.com/grafana/grafana-kiosk