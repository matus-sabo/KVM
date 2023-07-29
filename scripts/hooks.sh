#!/bin/bash

set -e

OP="$1"

if [[ "$OP" == "mount" ]]; then
    mkdir -p hooks
    sudo bindfs -u $(whoami) /etc/libvirt/hooks ./hooks
    echo "/etc/libvirt/hooks mounted to 'hooks' directory with desired ownership successfully."
fi

if [[ "$OP" == "umount" ]]; then
    fuser -m hooks -k
    sleep 2
    sudo umount hooks
    sleep 2
    rm -rf hooks
    echo "Directory 'hooks' removed."
    sudo chown -R root:root /etc/libvirt/hooks
    sudo systemctl restart libvirtd
    echo "Libvirt restart"
fi


