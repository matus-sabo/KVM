#!/usr/bin/env bash

source "/etc/libvirt/hooks/kvm.conf"

ddcutil -d $DISPLAY setvcp 60 $VM_INPUT