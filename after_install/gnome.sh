#!/usr/bin/env bash

set -e

sudo pacman -S --noconfirm gnome-shell gnome-backgrounds gdm xdg-utils xdg-user-dirs-gtk ghostty gnome-control-center gnome-keyring mutter gnome-menus gnome-themes-extra \
  wl-clipboard libappindicator-gtk3 xdg-desktop-portal-gnome xdg-desktop-portal \
  eog gnome-calendar evince file-roller gnome-screenshot gnome-shell-extensions gnome-system-monitor nautilus sushi gnome-tweaks noto-fonts \
  noto-fonts-emoji gnome-calculator gvfs gvfs-smb gvfs-nfs gvfs-mtp gvfs-afc \
  xvidcore x264 ffmpeg gst-libav totem rhythmbox geary
sudo systemctl enable gdm 
sudo ./hide_system_apps.sh
./nautilus.sh
./gnome-extensions.sh
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
