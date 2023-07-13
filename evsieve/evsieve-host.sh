#!/usr/bin/env bash

evsieve --input  /dev/input/by-path/pci-0000:10:00.3-usb-0:4:1.0-event-kbd domain=kb1 grab \
        --input  /dev/input/by-path/pci-0000:10:00.3-usb-0:4:1.2-event-kbd domain=kb2 grab \
        --input  /dev/input/by-path/pci-0000:10:00.3-usb-0:3:1.1-event-mouse domain=ms grab \
        --toggle @kb1 @host-kb @vm-kb \
        --toggle @kb2 @host-kb @vm-kb \
        --toggle @ms @host-ms "" \
        --map    key:leftalt@host-kb key:leftctrl \
        --output @host-kb create-link=/dev/input/by-id/host-keyboard \
        --output @vm-kb create-link=/dev/input/by-id/vm-keyboard \
        --output @host-ms create-link=/dev/input/by-id/host-mouse \
        --output @vm-ms create-link=/dev/input/by-id/vm-mouse
 