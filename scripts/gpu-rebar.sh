#!/bin/bash

echo -n "0000:0f:00.0" > /sys/bus/pci/drivers/vfio-pci/unbind
echo -n 14 > /sys/bus/pci/devices/0000\:0f\:00.0/resource0_resize
echo -n 3 > /sys/bus/pci/devices/0000\:0f\:00.0/resource2_resize
echo -n "0000:0f:00.0" > /sys/bus/pci/drivers/vfio-pci/bind