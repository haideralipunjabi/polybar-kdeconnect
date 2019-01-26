#!/usr/bin/env bash

. $(dirname "$0")/polybar-kdeconnect.config

if [ -z "$isavail" ]
then
    echo $ICON_DISCONNECTED
else
    echo $ICON_CONNECTED
fi