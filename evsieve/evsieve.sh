#!/usr/bin/env bash

TYPE="$1"
COMMAND="evsieve/evsieve-$TYPE.sh"

trap 'kill -- -$$' EXIT
echo "Service started $TYPE"

if [[ "$TYPE" != "host" ]]; then
    systemctl stop evsieve@host
fi

if [[ "$TYPE" != "fedora" ]]; then
    systemctl stop evsieve@fedora
fi

if [[ "$TYPE" != "osx" ]]; then
    systemctl stop evsieve@osx
fi

if [[ "$TYPE" != "windows" ]]; then
    systemctl stop evsieve@windows
fi

sleep 1
sudo $COMMAND

echo "Service stopped $TYPE"