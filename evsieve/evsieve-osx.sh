#!/usr/bin/env bash

evsieve --input  /dev/input/by-path/pci-0000:10:00.3-usb-0:4:1.0-event-kbd domain=kb1 grab \
        --input  /dev/input/by-path/pci-0000:10:00.3-usb-0:4:1.2-event-kbd domain=kb2 grab \
        --input  /dev/input/by-path/pci-0000:10:00.3-usb-0:3:1.1-event-mouse domain=ms grab \
        --toggle @kb1 @vm-kb @host-kb \
        --toggle @kb2 @vm-kb @host-kb \
        --toggle @ms @vm-ms @host-ms \
        --hook   key:scrolllock@host-kb toggle=:1 exec-shell="evsieve/switch-display.sh vm" \
        --hook   key:scrolllock@vm-kb toggle=:2 exec-shell="evsieve/switch-display.sh host" \
        --map    key:leftalt@host-kb key:leftctrl \
        --map    yield key:leftalt@vm-kb key:leftmeta \
        --output @host-kb create-link=/dev/input/by-id/host-keyboard \
        --output @vm-kb create-link=/dev/input/by-id/vm-keyboard \
        --output @host-ms create-link=/dev/input/by-id/host-mouse \
        --output @vm-ms create-link=/dev/input/by-id/vm-mouse