#! /bin/sh

rofi_cmd() {
	rofi -dmenu \
		-theme ~/.config/bspwm/themes/gawr_gura/rofi/powermenu_fullscreen.rasi
}

chosen=$(printf "⏻\n󰜉\n󰗼" | rofi_cmd)

case "$chosen" in

	"⏻") poweroff ;;
	"󰜉") reboot ;;
	"󰗼") bspc quit ;;
	*) exit 1 ;;

esac
