#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar -c ~/.config/polybar/config.ini top &
polybar -c ~/.config/polybar/config.ini bottom &


case $desktop in


    bspwm|/usr/share/xsessions/bspwm)
    if type "xrandr" > /dev/null; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload top -c ~/.config/polybar/config.ini &
      done
    else
    polybar --reload top -c ~/.config/polybar/config.ini &
    fi
    # second polybar at bottom
    if type "xrandr" > /dev/null; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload mainbar-bspwm-extra -c ~/.config/polybar/config.ini &
      done
    else
    polybar --reload mainbar-bspwm-extra -c ~/.config/polybar/config.ini &
    fi
    ;;

    
esac