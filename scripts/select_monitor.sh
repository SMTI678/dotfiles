#!/bin/zsh

menu="default only\nexternal only\nboth monitors"
mode="$(echo $menu | rofi -dmenu -l 3 -width 10)"

case "$mode" in
	"default only")
		xrandr --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off
		;;
	"external only")
		xrandr --output DP1 --mode 2560x1440 --pos 0x0 --rotate normal --output eDP1 --off
		;;
	"both monitors")
		xrandr --output DP1 --mode 2560x1440 --pos 1920x0 --rotate normal --output eDP1 --mode 1920x1080 --pos 0x600 --rotate normal
		for ((i = 10; i >= 6; i -= 1)); do
			i3-msg "workspace $i, move workspace to output eDP1"
		done
		for ((i = 5; i >= 1; i -= 1)); do
			i3-msg "workspace $i, move workspace to output DP1"
		done
		;;
	*)
		exit(0)
		;;
esac

~/scripts/wallpaper.sh
~/.config/polybar/launch.sh

