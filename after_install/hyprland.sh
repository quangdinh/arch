#!/usr/bin/env bash

set -e

sudo pacman -S --noconfirm hyprland hyprpaper hyprlock hypridle waybar wofi ghostty \
  xdg-user-dirs-gtk imv zathura zathura-pdf-poppler mpv xdg-desktop-portal-gtk \
  xdg-desktop-portal-hyprland swaync ly slurp grim wl-clipboard libnotify jq \
  swappy polkit-gnome ttf-dejavu noto-fonts noto-fonts-extra noto-fonts-emoji \
  ncmpcpp mpd mpc nm-connection-editor brightnessctl hyprpicker hyprsunset \
  kanshi gnome-keyring pulsemixer

yay -S --noconfirm overskride-bin uwsm eww

# Auto start gnome on login with ly
if [[ $(cat /etc/pam.d/ly | grep gnome | wc -l) -eq 0 ]]; then 
  sudo sed -i -E "s/account(.*)login/auth       optional     pam_gnome_keyring.so\naccount\1login/g" /etc/pam.d/ly
  sudo sed -i -E "s/session(.*)login/session\1login\nsession    optional     pam_gnome_keyring.so auto_start/g" /etc/pam.d/ly
fi

# Use uwsm by default
sudo rm /usr/share/wayland-sessions/hyprland-uwsm.desktop
sudo sed -i -e 's/Exec=.*$/Exec=uwsm start \&>> \/dev\/null -- Hyprland \&>> \/dev\/null/g' /usr/share/wayland-sessions/hyprland.desktop

sudo systemctl enable ly.service
systemctl --user enable waybar.service

# Disable accessibility-services
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

./terminal-apps.sh
