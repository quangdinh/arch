#!/usr/bin/env bash

set -e

# Use uwsm by default
sudo rm /usr/share/wayland-sessions/hyprland-uwsm.desktop
sudo sed -i -E 's/Exec=(.*)$/Exec=\1 \&>> \/dev\/null/g' /usr/share/wayland-sessions/hyprland.desktop


