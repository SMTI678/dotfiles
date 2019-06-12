#!/bin/sh

player_status=$(playerctl status 2> /dev/null)
playing="♫  "
if [ "$player_status" = "Playing" ]; then
    echo "$playing$(playerctl metadata artist) - $(playerctl metadata title)"
elif [ "$player_status" = "Paused" ]; then
    echo "$playing$(playerctl metadata artist) - $(playerctl metadata title)"
else
    echo ""
fi

