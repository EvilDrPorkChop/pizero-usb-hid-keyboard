#!/usr/bin/env bash

# If this is run from SSH, your connection will disconnect when this script is done.

git clone https://github.com/EvilDrPorkChop/pizero-usb-hid-keyboard.git
cd pizero-usb-hid-keyboard
./setup-hid-modules.sh
./enableHIDRCLocal.sh
poweroff
