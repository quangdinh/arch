#!/usr/bin/env bash

set -e


sudo pacman -S --noconfirm hyprland hyprpaper swaylock swayidle waybar wofi foot \
  xdg-user-dirs-gtk imv zathura zathura-pdf-poppler mpv xdg-desktop-portal-gtk \
  xdg-desktop-portal-hyprland mako ly slurp grim wl-clipboard libnotify jq \
  swappy polkit-gnome noto-fonts noto-fonts-extra noto-fonts-emoji \
  ncmpcpp mpd mpc nm-connection-editor
yay -S --noconfirm hyprland-relative-workspace-bin
sudo ./gnome_keyring.py
sudo systemctl enable ly.service
sudo ./hide_system_apps.sh
./ranger.sh
./imv.sh
sudo mkdir -p /usr/local/bin
sudo cp ./hyprland/* /usr/local/bin/
mkdir -p ~/.config/ncmpcpp/previews
mkdir -p ~/.config/mpd/playlist
systemctl --user enable mpd
