#!/usr/bin/env bash
#
# This hook allows automatically switch monitor inputs when starting/stopping a VM.
# This file depends on the Passthrough POST hook helper script found in this repo.
# Place this script in BOTH these directories (or symlink it): 
# $SYSCONFDIR/libvirt/hooks/qemu.d/your_vm/started/begin/
# $SYSCONFDIR/libvirt/hooks/qemu.d/your_vm/stopped/end/
# $SYSCONFDIR usuallu is /etc/libvirt.
# Set the files as executable through `chmod +x` and configure your inputs.
# You also need `ddcutil` and a ddcutil-compatible monitor.
#
# Make sure you specify the right settings for your setup below or it won't work.

source "/etc/libvirt/hooks/kvm.conf"

if [[ "$2/$3" == "started/begin" ]]; then
    INPUT="$VM_INPUT"
fi

if [[ "$2/$3" == "stopped/end" ]]; then
    INPUT="$HOST_INPUT"
fi

CURRENT_INPUT="$(ddcutil -d $VM_DISPLAY getvcp 60 --terse | awk '{print $4}')"

if [[ "$CURRENT_INPUT" != "$INPUT" ]]; then
    ddcutil -d $VM_DISPLAY setvcp 60 $INPUT
fi