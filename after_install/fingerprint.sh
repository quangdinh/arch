#!/usr/bin/env bash

set -e

sudo pacman -Syu --noconfirm fprintd
sudo cp /usr/lib/pam.d/polkit-1 /etc/pam.d/
if [[ $(cat /etc/pam.d/polkit-1 | grep fprintd | wc -l) -eq 0 ]]; then 
  sudo sed -i -E "s/auth(.*)system-auth/auth       sufficient   pam_fprintd.so\nauth\1system-auth/g" /etc/pam.d/polkit-1
fi

if [[ $(cat /etc/pam.d/sudo | grep fprintd | wc -l) -eq 0 ]]; then 
  sudo sed -i -E "s/auth(.*)system-auth/auth            sufficient      pam_fprintd.so\nauth\1system-auth/g" /etc/pam.d/sudo
fi
