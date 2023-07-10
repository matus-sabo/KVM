#!/bin/bash
set -e

mkdir hooks
sudo bindfs -u $(whoami) /etc/libvirt/hooks ./hooks
