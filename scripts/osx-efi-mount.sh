#!/bin/bash
set -e

# Check if nbd module is already loaded
if lsmod | grep -q "^nbd"; then
    echo "nbd module is already loaded. Proceeding..."
else
    echo "nbd module is not loaded. Loading..."
    sudo modprobe nbd max_part=8
fi

# Check if /dev/nbd0 is already connected
if lsblk -o NAME | grep -q "^nbd0$"; then
    echo "/dev/nbd0 is already connected. Disconnecting..."
    sudo qemu-nbd --disconnect /dev/nbd0
fi

sudo qemu-nbd --connect=/dev/nbd0 -f raw ./OpenCore-v20.iso
echo "Connected /dev/nbd0."

sudo mkdir -p /mnt/OSX-EFI
mkdir -p EFI
echo "Created 'EFI' directory."

# Mount /dev/nbd0 to the "mnt" directory with desired ownership
sudo mount -o uid=$(id -u),gid=$(id -g) /dev/nbd0p1 /mnt/OSX-EFI
sudo mount --bind /mnt/OSX-EFI/EFI EFI

echo "OpenCore Image mounted to 'EFI' directory with desired ownership successfully."
