#!/usr/bin/env bash

source "/etc/libvirt/hooks/kvm.conf"

VM_NAME="$1"
EVSIEVE_SERVICE="evsieve@$VM_NAME"

systemctl restart $EVSIEVE_SERVICE
sleep 2