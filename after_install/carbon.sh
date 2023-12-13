#!/usr/bin/env bash

set -e
./reflector.sh
./thinkpad.sh
./firewall.sh
./hyprland.sh
./dark_mode.sh
yay -Syu --noconfirm rbenv ruby-build nvm 1password mongodb-compass \
  postman-bin slack-desktop-wayland google-chrome \
  gita kubectl k9s
