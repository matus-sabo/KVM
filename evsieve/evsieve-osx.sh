#!/usr/bin/env bash

source "evsieve/evsieve.conf"

evsieve --input  $KEYBOARD_INPUT_1 domain=kb1 grab \
        --input  $KEYBAORD_INPUT_2 domain=kb2 grab \
        --input  $MOUSE_INPUT domain=ms grab \
        --toggle @kb1 @kb-vm @kb-host \
        --toggle @kb2 @kb-vm @kb-host \
        --toggle @ms @ms-vm @ms-host \
        --hook   key:scrolllock key:h sequential toggle=:2 exec-shell="evsieve/toggle.sh host" send-key=key:esc@kb-host \
        --hook   key:scrolllock key:v sequential toggle=:1 exec-shell="evsieve/toggle.sh vm" send-key=key:esc@kb-vm \
        --withhold \
        --hook   key:scrolllock@kb-vm toggle=:2 exec-shell="evsieve/toggle.sh host" send-key=key:esc@kb-host \
        --hook   key:scrolllock@kb-host toggle=:1 exec-shell="evsieve/toggle.sh vm" send-key=key:esc@kb-vm \
        --map    key:leftalt@kb-host key:leftctrl \
        --map    yield key:leftalt@kb-vm key:leftmeta \
        --output @kb-host create-link=$KEYBOARD_HOST_INPUT \
        --output @kb-vm create-link=$KEYBOARD_VM_INPUT \
        --output @ms-host create-link=$MOUSE_HOST_INPUT \
        --output @ms-vm create-link=$MOUSE_VM_INPUT