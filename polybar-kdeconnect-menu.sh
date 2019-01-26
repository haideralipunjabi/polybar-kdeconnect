#!/bin/sh
device="a48f193c969ca8dc"
devicename="$(kdeconnect-cli -a | grep $device | awk -F'[-|:]' '{print $2}')"
isavail="$(kdeconnect-cli -a | grep $device | grep "paired and reachable")"
battery="$(qdbus org.kde.kdeconnect /modules/kdeconnect/devices/$device org.kde.kdeconnect.device.battery.charge)"
if ! [ -z $isavail ]
then
    MENU="$(rofi -sep "|" -dmenu -i -p $devicename -width 15 -hide-scrollbar -theme material -line-padding 4 -padding 20 -lines 4 -font "Fantasque Sans Mono 10" <<< "Battery: $battery%|Ping|Find Device|Send File")"
                case "$MENU" in
                    *Ping) kdeconnect-cli --ping -d $device ;;
                    *"Find Device") kdeconnect-cli --ring -d $device ;;
                    *"Send File") kdeconnect-cli --share "$(zenity --file-selection)" -d $device
                    # *Lock) i3lock-fancy ;;
                    # *Logout) openbox --exit;;
                    # *Reboot) systemctl reboot ;;
                    # *Shutdown) systemctl -i poweroff
                esac
fi