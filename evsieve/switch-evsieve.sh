#!/usr/bin/env bash

source "evsieve/evsieve.conf"

TARGET="$1"
KEYBOARD_INPUT="$KEYBOARD_INPUT_1"

if [[ "$TARGET" == "host" ]]; then
    evemu-event "$KEYBOARD_INPUT" --type EV_KEY --code KEY_SCROLLLOCK --value 1 --sync
    evemu-event "$KEYBOARD_INPUT" --type EV_KEY --code KEY_H --value 1 --sync
    evemu-event "$KEYBOARD_INPUT" --type EV_KEY --code KEY_SCROLLLOCK --value 0 --sync
    evemu-event "$KEYBOARD_INPUT" --type EV_KEY --code KEY_H --value 0 --sync
fi

if [[ "$TARGET" == "vm" ]]; then
    evemu-event "$KEYBOARD_INPUT" --type EV_KEY --code KEY_SCROLLLOCK --value 1 --sync
    evemu-event "$KEYBOARD_INPUT" --type EV_KEY --code KEY_V --value 1 --sync
    evemu-event "$KEYBOARD_INPUT" --type EV_KEY --code KEY_SCROLLLOCK --value 0 --sync
    evemu-event "$KEYBOARD_INPUT" --type EV_KEY --code KEY_V --value 0 --sync
fi
