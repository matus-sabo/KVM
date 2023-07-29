#!/usr/bin/env bash

source "evsieve/evsieve.conf"

TARGET="$1"
EV_KEY="$2"

if [[ "$TARGET" == "keyboard1" ]]; then
    KEYBOARD_INPUT="$KEYBOARD_INPUT_1"
fi

if [[ "$TARGET" == "host" ]]; then
    KEYBOARD_INPUT="$KEYBOARD_HOST_INPUT"
fi

if [[ "$TARGET" == "vm" ]]; then
    KEYBOARD_INPUT="$KEYBOARD_VM_INPUT"
fi

evemu-event "$KEYBOARD_INPUT" --type EV_KEY --code $EV_KEY --value 1 --sync
evemu-event "$KEYBOARD_INPUT" --type EV_KEY --code $EV_KEY --value 0 --sync