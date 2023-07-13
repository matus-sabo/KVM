#!/usr/bin/env bash

source "/etc/libvirt/hooks/kvm.conf"

systemctl restart evsieve@host
ddcutil -d $DISPLAY setvcp 60 $HOST_INPUT