#!/usr/bin/env bash

TARGET="$1"

DISPLAY="1"     # The display shown in `ddcutil detect`
HOST_INPUT="0x10"  # The input the host  is connected to. See `ddcutil capabilities`)
VM_INPUT="0x0f" # The input the VM is connected to. See `ddcutil capabilities`)
CURRENT_INPUT="0$(ddcutil -d $DISPLAY getvcp 60 --terse | awk '{print $4}')"

if [[ "$TARGET" == "host" ]]; then
    INPUT="$HOST_INPUT"
fi

if [[ "$TARGET" == "vm" ]]; then
    INPUT="$VM_INPUT"
fi

ddcutil -d $DISPLAY setvcp 60 $INPUT