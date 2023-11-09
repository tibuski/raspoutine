# raspoutine
Raspberry Headless Kiosk

## SD Card

* Since Bookworm, you have to use RPI Imager to write the SD Card, setup Wifi, User, Locale and Keyboard Layout.
* If you forgot to enable SSH in the second Tab, you can create/copy an empty `ssh` file on the root of `bootfs` partition.

## Staging

* Run `ssh tibus@192.168.25.227 < staging.sh`
* Raspberry reboots
* Run : `raspoutine_scp.sh tibus@192.168.25.227`