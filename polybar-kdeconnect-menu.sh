#!/usr/bin/env bash

. $(dirname "$0")/polybar-kdeconnect.config

if ! [ -z $isavail ]
then
    menu="$(rofi -sep "|" -dmenu -i -p $devicename -location $LOCATION -yoffset $YOFFSET -xoffset $XOFFSET -theme $THEME -width $WIDTH -hide-scrollbar -line-padding 4 -padding 20 -lines 4 <<< "Battery: $battery%|Ping|Find Device|Send File")"
                case "$menu" in
                    *Ping) kdeconnect-cli --ping -d $device ;;
                    *'Find Device') kdeconnect-cli --ring -d $device ;;
                    *'Send File') kdeconnect-cli --share "$(zenity --file-selection)" -d $device
                esac
fi