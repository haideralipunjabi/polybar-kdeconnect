#!/bin/sh
ICON_CONNECTED=""
ICON_DISCONNECTED=""
device="a48f193c969ca8dc"
isavail="$(kdeconnect-cli -a | grep $device | grep "paired and reachable")"
battery="$(qdbus org.kde.kdeconnect /modules/kdeconnect/devices/$device org.kde.kdeconnect.device.battery.charge)"
if [ -z "$isavail" ]
then
    echo $ICON_DISCONNECTED
else
    echo $ICON_CONNECTED
fi