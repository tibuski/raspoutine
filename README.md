# raspoutine
Raspberry Headless Kiosk

## SD Card

* Since Bookworm, you have to use RPI Imager to write the SD Card, setup Wifi, User (`pi`), Locale and Keyboard Layout.
* If you forgot to enable SSH in the second Tab, you can create/copy an empty `ssh` file on the root of `bootfs` partition.

## Staging

* Install your public key in the raspberry's authorized_keys with `ssh-copy-id`
* Modify the URL in `xinitrc`
* Run : `./staging.sh [RASPBERRY IP]`
* Raspberry should reboot and open Chromium in Kiosk mode on the url from `xinitrc`
