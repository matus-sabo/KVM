#!/usr/bin/env bash

source "evsieve/evsieve.conf"

evsieve --input  $KEYBOARD_INPUT_1 domain=kb1 grab \
        --input  $KEYBAORD_INPUT_2 domain=kb2 grab \
        --input  $MOUSE_INPUT domain=ms grab \
        --toggle @kb1 @host-kb @vm-kb \
        --toggle @kb2 @host-kb @vm-kb \
        --toggle @ms @host-ms "" \
        --map    key:leftalt@host-kb key:leftctrl \
        --output @host-kb create-link=$HOST_KEYBOAD_INPUT \
        --output @vm-kb create-link=$VM_KEYBOARD_INPUT \
        --output @host-ms create-link=$HOST_MOUSE_INPUT \
        --output @vm-ms create-link=$VM_MOUSE_INPUT
 