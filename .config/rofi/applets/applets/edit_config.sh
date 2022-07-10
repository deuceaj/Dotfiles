#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

style="$($HOME/.config/rofi/applets/applets/style.sh)"

dir="$HOME/.config/rofi/applets/applets/configs/$style"
rofi_command="rofi -theme $dir/edit_config.rasi"
editor="code"

# Links
config=" "
bspwm=""
polybar=""
rofi=""
sxhkd=""

# Error msg
msg() {
	rofi -theme "$HOME/.config/rofi/applets/styles/message.rasi" -e "$1"
}

# Variable passed to rofi
options="$config\n$bspwm\n$polybar\n$rofi\n$sxhkd"

chosen="$(echo -e "$options" | $rofi_command -p "Config Files" -dmenu -selected-row 0)"
case $chosen in

    $config)
		if [[ -f /usr/bin/code ]]; then
			$editor $HOME/.config/ &
		else
			msg "No suitable text editor found!"
		fi
        ;;
		$bspwm)
		if [[ -f /usr/bin/code ]]; then
			$editor $HOME/.config/bspwm/ &
		else
			msg "No suitable text editor found!"
		fi
        ;;
		$polybar)
		if [[ -f /usr/bin/code ]]; then
			$editor $HOME/.config/polybar/ &
		else
			msg "No suitable text editor found!"
		fi
        ;;
		$rofi)
		if [[ -f /usr/bin/code ]]; then
			$editor $HOME/.config/rofi/ &
		else
			msg "No suitable text editor found!"
		fi
        ;;
		$sxhkd)
		if [[ -f /usr/bin/code ]]; then
			$editor $HOME/.config/bspwm/sxhkd/ &
		else
			msg "No suitable text editor found!"
		fi
        ;;
    
esac
