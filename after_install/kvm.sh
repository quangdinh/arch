#!/usr/bin/env bash

set -e
sudo pacman -S --noconfirm swtpm dnsmasq virt-manager libvirt qemu-desktop
sudo usermod -aG libvirt $(whoami)  
