#!/usr/bin/env bash

source "/etc/libvirt/hooks/kvm.conf"

GUEST="$1"
EVSIEVE_SERVICE="evsieve@$GUEST"

systemctl restart $EVSIEVE_SERVICE
sleep 2