#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

style="$($HOME/.config/rofi/applets/applets/style.sh)"

dir="$HOME/.config/rofi/applets/applets/configs/$style"
rofi_command="rofi -theme $dir/quicklinks.rasi"

# Error msg
msg() {
	rofi -theme "$HOME/.config/rofi/applets/styles/message.rasi" -e "$1"
}

# Browser
if [[ -f /usr/bin/firefox ]]; then
	app="firefox-developer-edition"
elif [[ -f /usr/bin/chromium ]]; then
	app="chromium"
elif [[ -f /usr/bin/midori ]]; then
	app="midori"
else
	msg "No suitable web browser found!"
	exit 1
fi

# Links
google=" Advanced"
deuce_github=" Deuce"
CT_github=" Titus"
github=" DT"
Twitch_Hollow=" Lenitz"
Plex="  Plex"
youtube=""

# Variable passed to rofi
options="$google\n$deuce_github\n$CT_github\n$github\n$Twitch_Hollow\n$Plex\n$youtube"

chosen="$(echo -e "$options" | $rofi_command -p "Open In  :  Firefox" -dmenu -selected-row 0)"
case $chosen in
    $google)
        $app https://www.google.com/advanced_search &
        ;;
    $deuce_github)
        $app https://github.com/deuceaj/ &
        ;;
    $CT_github)
        $app https://github.com/ChrisTitusTech/ &
        ;;
    $github)
        $app https://gitlab.com/dwt1 &
        ;;
    $Twitch_Hollow)
        $app https://twitch.tv/hollowsprinter &
        ;;
    $Plex)
        $app http://192.168.2.101:32400/web/index.html#!/ &
        ;;
    $youtube)
        $app https://www.youtube.com &
        ;;
esac

