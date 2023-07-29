#!/usr/bin/env bash

TYPE="$1"
COMMAND="evsieve/evsieve-$TYPE.sh"

trap 'kill -- -$$' EXIT
echo "Service started $TYPE"

if [[ "$TYPE" == "host" ]]; then
    systemctl stop evsieve@fedora
    systemctl stop evsieve@osx
    systemctl stop evsieve@windows
    sleep 1
    evsieve/press-key.sh keyboard1 KEY_ESC
    evsieve/switch-display.sh host
fi

if [[ "$TYPE" != "host" ]]; then
    systemctl stop evsieve@host
    sleep 1 
    evsieve/switch-display.sh vm
fi

sudo $COMMAND

echo "Service stopped $TYPE