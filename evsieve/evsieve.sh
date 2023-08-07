#!/usr/bin/env bash

source "evsieve/evsieve.conf"

TYPE="$1"
COMMAND="evsieve/evsieve-$TYPE.sh"

trap 'kill -- -$$' EXIT
echo "Service started $TYPE"

if [[ "$TYPE" == "host" ]]; then
    if [[ -L "$KEYBOARD_HOST_INPUT" ]]; then
        evsieve/switch-evsieve.sh host
    fi
    systemctl stop evsieve@fedora evsieve@osx evsieve@windows
fi

if [[ "$TYPE" != "host" ]]; then
    if [[ -L "$KEYBOARD_VM_INPUT" ]]; then
        evsieve/switch-evsieve.sh vm
    fi
    systemctl stop evsieve@host
fi

sleep 1
sudo $COMMAND

echo "Service stopped $TYPE