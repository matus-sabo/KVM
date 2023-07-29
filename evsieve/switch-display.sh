#!/usr/bin/env bash

source "evsieve/evsieve.conf"

TARGET="$1"
# CURRENT_INPUT="0$(ddcutil -d $DISPLAY getvcp 60 --terse | awk '{print $4}')"

if [[ "$TARGET" == "host" ]]; then
    INPUT="$DISPLAY_HOST_INPUT"
fi

if [[ "$TARGET" == "vm" ]]; then
    INPUT="$DISPLAY_VM_INPUT"
fi

ddcutil -d $DISPLAY setvcp 60 $INPUT