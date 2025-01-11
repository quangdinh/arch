#!/usr/bin/env bash

set -e


sudo pacman -S --noconfirm hyprland hyprpaper hyprlock hypridle waybar wofi ghostty \
  xdg-user-dirs-gtk imv zathura zathura-pdf-poppler mpv xdg-desktop-portal-gtk \
  xdg-desktop-portal-hyprland mako greetd greetd-regreet slurp grim wl-clipboard libnotify jq \
  swappy polkit-gnome ttf-dejavu noto-fonts noto-fonts-extra noto-fonts-emoji \
  ncmpcpp mpd mpc nm-connection-editor brightnessctl
yay -S --noconfirm uwsm
sudo ./gnome_keyring.py
sudo mkdir -p /etc/greetd
sudo cp ./hyprland-configs/greetd/* /etc/greetd/
sudo systemctl enable greetd.service
sudo ./hide_system_apps.sh
./yazi.sh
./imv.sh
sudo mkdir -p /usr/local/bin
sudo cp ./hyprland/* /usr/local/bin/
mkdir -p ~/.config/ncmpcpp/previews
mkdir -p ~/.config/mpd/playlist
systemctl --user enable mpd
