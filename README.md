# pizero-usb-hid-keyboard

# Procedure I used

Basically, a ripoff of this: https://www.aidanwoods.com/blog/building-a-wifi-enabled-usb-rubber-ducky/

1. Started with a clean install of Raspbian Buster
2. Used a Raspberry Pi 3 to setup wifi/keyboard/do apt update etc.
3. Then took SD card out and put into Pi Zero W and booted.
4. Ran the following as root (sudo su)

```sh
git clone https://github.com/raspberrypisig/pizero-usb-hid-keyboard
cd pizero-usb-hid-keyboard
./setup-hid-modules.sh
./enableHIDRCLocal.sh
poweroff
```
5. When pi is off, remove power supply and use an ORDINARY(not OTG cable) microUSB to USB cable and plug it in to the USB connector marked
USB on the board(the one next to the HDMI connector).
6. Be patient, eventually Windows sees it as a Generic USB keyboard.
7. On Windows, open notepad
8. Using another computer, I ssh'd into pi and ran 

```
cd pizero-usb-hid-keyboard
echo 'left-shift h' | ./hid_gadget_test /dev/hidg0 keyboard
```
9. Success!