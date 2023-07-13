#!/bin/bash
set -e

mkdir -p hooks
sudo bindfs -u $(whoami) /etc/libvirt/hooks ./hooks
