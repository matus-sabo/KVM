#!/bin/bash

# Unmount the image from the "mnt" directory
sudo umount EFI
sudo umount /mnt/OSX-EFI
echo "OpenCore Image unmounted."

# Disconnect the NBD device
sudo qemu-nbd --disconnect /dev/nbd0
echo "NBD device disconnected."

# Remove the "EFI" directory
sudo rm -rf EFI
sudo rm -rf /mnt/OSX-EFI

echo "Directory 'EFI' removed."
