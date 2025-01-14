#!/usr/bin/env bash

set -e


sudo pacman -S --noconfirm hyprland hyprpaper hyprlock hypridle waybar wofi ghostty \
  xdg-user-dirs-gtk imv zathura zathura-pdf-poppler mpv xdg-desktop-portal-gtk \
  xdg-desktop-portal-hyprland swaync ly slurp grim wl-clipboard libnotify jq \
  swappy polkit-gnome ttf-dejavu noto-fonts noto-fonts-extra noto-fonts-emoji \
  ncmpcpp mpd mpc nm-connection-editor brightnessctl hyprpicker hyprsunset \
  kanshi

yay -S --noconfirm overskride-bin

sudo ./gnome_keyring.py
sudo rm /usr/share/wayland-sessions/hyprland-uwsm.desktop
sudo sed -i -e 's/Exec=.*$/Exec=uwsm start \&>> \/dev\/null -- Hyprland \&>> \/dev\/null/g' /usr/share/wayland-sessions/hyprland.desktop
sudo systemctl enable ly.service
systemctl --user enable waybar.service
sudo rm -rf /usr/share/dbus-1/accessibility-services/org.a11y.*
sudo rm -rf /usr/share/dbus-1/services/org.a11y.*
sudo ./hide_system_apps.sh
./yazi.sh
./imv.sh
sudo mkdir -p /usr/local/bin
sudo cp ./hyprland/* /usr/local/bin/
mkdir -p ~/.config/ncmpcpp/previews
mkdir -p ~/.config/mpd/playlist
systemctl --user enable mpd
