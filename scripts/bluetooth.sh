#!/bin/sh

if [ "$(bluetoothctl show | grep Powered: | cut -c 2-)" = "Powered: yes" ]; then
	echo "On"
else
	echo "Off"
fi
