#!/usr/bin/env bash

source "evsieve/evsieve.conf"

evsieve --input  $KEYBOARD_INPUT_1 domain=kb1 grab \
        --input  $KEYBAORD_INPUT_2 domain=kb2 grab \
        --input  $MOUSE_INPUT domain=ms grab \
        --toggle @kb1 @vm-kb @host-kb \
        --toggle @kb2 @vm-kb @host-kb \
        --toggle @ms @vm-ms @host-ms \
        --hook   key:scrolllock key:h sequential toggle=:2 exec-shell="evsieve/toggle.sh host" send-key=key:esc@host-kb \
        --hook   key:scrolllock key:v sequential toggle=:1 exec-shell="evsieve/toggle.sh vm" send-key=key:esc@vm-kb \
        --withhold \
        --hook   key:scrolllock@vm-kb toggle=:2 exec-shell="evsieve/toggle.sh host" send-key=key:esc@host-kb \
        --hook   key:scrolllock@host-kb toggle=:1 exec-shell="evsieve/toggle.sh vm" send-key=key:esc@vm-kb \
        --map    key:leftalt@host-kb key:leftctrl \
        --map    key:leftalt@vm-kb key:leftctrl \
        --output @host-kb create-link=$KEYBOARD_HOST_INPUT \
        --output @vm-kb create-link=$KEYBOARD_VM_INPUT \
        --output @host-ms create-link=$MOUSE_HOST_INPUT \
        --output @vm-ms create-link=$MOUSE_VM_INPUT