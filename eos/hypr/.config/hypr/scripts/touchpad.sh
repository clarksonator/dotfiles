#!/bin/bash

# Set device to be toggled
HYPRLAND_DEVICE="dll07a8:01-044e:120b"
HYPRLAND_VARIABLE="device[$HYPRLAND_DEVICE]:enabled"

if [ -f /tmp/tpstatus ]; then
 DEVICE=`cat /tmp/tpstatus|grep "1"`
else
  DEVICE="$(grep dll07a8:01-044e:120b -A 1 ~/.config/hypr/hyprland.conf|grep 'enabled = 1')"
fi

if [ -z "$DEVICE" ]; then
	# if the device is disabled, then enable
	notify-send -u normal "Enabling Touchpad"
	hyprctl -r -- keyword $HYPRLAND_VARIABLE 1
  echo "1" > /tmp/tpstatus
else
	# if the device is enabled, then disable
	notify-send -u normal "Disabling Touchpad"
	hyprctl -r -- keyword $HYPRLAND_VARIABLE 0
  echo "0" > /tmp/tpstatus
fi
