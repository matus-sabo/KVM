#!/usr/bin/env bash

source "evsieve/evsieve.conf"

TYPE="$1"
COMMAND="evsieve/evsieve-$TYPE.sh"

trap 'kill -- -$$' EXIT
echo "Service started $TYPE"

if [[ "$TYPE" == "host" ]]; then
    if [[ -L "$KEYBOARD_HOST_INPUT" ]]; then
        evsieve/toggle.sh host
        evsieve/press-key.sh host KEY_ESC
    fi
    systemctl stop evsieve@fedora evsieve@osx evsieve@windows
fi

if [[ "$TYPE" != "host" ]]; then
    evsieve/toggle.sh vm
    systemctl stop evsieve@host
fi

sleep 1
sudo $COMMAND

echo "Service stopped $TYPE