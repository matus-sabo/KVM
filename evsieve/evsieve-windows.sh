#!/usr/bin/env bash

source "evsieve/evsieve.conf"

evsieve --input  $KEYBOARD_INPUT_1 domain=kb1 grab \
        --input  $KEYBAORD_INPUT_2 domain=kb2 grab \
        --input  $MOUSE_INPUT domain=ms grab \
        --toggle @kb1 @vm-kb @host-kb \
        --toggle @kb2 @vm-kb @host-kb \
        --toggle @ms @vm-ms @host-ms \
        --hook   key:scrolllock@host-kb toggle=:1 exec-shell="evsieve/switch-display.sh vm" \
        --hook   key:scrolllock@vm-kb toggle=:2 exec-shell="evsieve/switch-display.sh host" \
        --map    key:leftalt@host-kb key:leftctrl \
        --map    key:leftalt@vm-kb key:leftctrl \
        --output @host-kb create-link=$HOST_KEYBOAD_INPUT \
        --output @vm-kb create-link=$VM_KEYBOARD_INPUT \
        --output @host-ms create-link=$HOST_MOUSE_INPUT \
        --output @vm-ms create-link=$VM_MOUSE_INPUT