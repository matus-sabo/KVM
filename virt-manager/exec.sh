#!/bin/bash

set -e

gsettings set org.gnome.mutter center-new-windows true 
virt-manager
sleep 1
gsettings set org.gnome.mutter center-new-windows false