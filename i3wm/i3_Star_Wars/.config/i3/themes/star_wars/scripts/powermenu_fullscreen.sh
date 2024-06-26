#! /bin/sh

rofi_cmd() {
	rofi -dmenu \
		-theme ~/.config/i3/themes/star_wars/rofi/powermenu_fullscreen.rasi
}

chosen=$(printf "⏻\n󰜉\n󰗼" | rofi_cmd)

case "$chosen" in

# Для systemd
	"⏻") poweroff ;;
	"󰜉") reboot ;;
	"󰗼") exec i3-msg exit ;;

# Для runit
#	"⏻") sudo shutdown -h now ;;
#	"󰜉") sudo shutdown -r now ;;
#	"󰗼") exec i3-msg exit ;;
#	*) exit 1 ;;

esac
