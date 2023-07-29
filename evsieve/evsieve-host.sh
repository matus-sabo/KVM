#!/usr/bin/env bash

source "evsieve/evsieve.conf"

evsieve --input  $KEYBOARD_INPUT_1 domain=kb1 grab \
        --input  $KEYBAORD_INPUT_2 domain=kb2 grab \
        --input  $MOUSE_INPUT domain=ms grab \
        --toggle @kb1 @host-kb @vm-kb \
        --toggle @kb2 @host-kb @vm-kb \
        --toggle @ms @host-ms "" \
        --map    key:leftalt@host-kb key:leftctrl \
        --output @host-kb create-link=$KEYBOARD_HOST_INPUT \
        --output @vm-kb create-link=$KEYBOARD_VM_INPUT \
        --output @host-ms create-link=$MOUSE_HOST_INPUT \
        --output @vm-ms create-link=$MOUSE_VM_INPUT
 