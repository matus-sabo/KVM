#!/bin/bash
set -e

fuser -m hooks -k
sleep 2
sudo umount hooks
sleep 2
rm -rf hooks
sudo chown -R root:root /etc/libvirt/hooks
sudo systemctl restart libvirtd