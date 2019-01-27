#!/usr/bin/env bash

. $(dirname "$0")/polybar-kdeconnect.config

if [ -z "$isavail" ]
then
    echo $ICON_DISCONNECTED
else
    
    case $battery in 
    5*)     ICON_CONNECTED="%{F$COLOR_BATTERY_50}"$ICON"%{F-}" ;;
    6*)     ICON_CONNECTED="%{F$COLOR_BATTERY_60}"$ICON"%{F-}" ;;
    7*)     ICON_CONNECTED="%{F$COLOR_BATTERY_70}"$ICON"%{F-}" ;;
    8*)     ICON_CONNECTED="%{F$COLOR_BATTERY_80}"$ICON"%{F-}" ;;
    9*|100) ICON_CONNECTED="%{F$COLOR_BATTERY_90}"$ICON"%{F-}" ;;
    *)      ICON_CONNECTED="%{F$COLOR_BATTERY_LOW}"$ICON"%{F-}" ;; 
    esac

    echo $ICON_CONNECTED
fi