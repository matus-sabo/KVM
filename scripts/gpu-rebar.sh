#!/bin/bash

# Bit Sizes
# 1 = 2MB
# 2 = 4MB
# 3 = 8MB
# 4 = 16MB
# 5 = 32MB
# 6 = 64MB
# 7 = 128MB
# 8 = 256MB
# 9 = 512MB
# 10 = 1GB
# 11 = 2GB
# 12 = 4GB
# 13 = 8GB
# 14 = 16GB
# 15 = 32GB

GPU_PCI_0="0000:0f:00.0"

BAR_0_SIZE=$1
BAR_2_SIZE=$2

echo -n "$GPU_PCI_0" > /sys/bus/pci/drivers/vfio-pci/unbind
echo -n $BAR_0_SIZE > /sys/bus/pci/devices/$GPU_PCI_0/resource0_resize
echo -n $BAR_2_SIZE > /sys/bus/pci/devices/$GPU_PCI_0/resource2_resize
echo -n "$GPU_PCI_0" > /sys/bus/pci/drivers/vfio-pci/bind
