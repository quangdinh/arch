#!/usr/bin/env bash

set -e
yay -Syu --noconfirm rbenv ruby-build 1password mongodb-compass \
  postman-bin slack-desktop-wayland google-chrome \
  gita kubectl k9s fnm-bin oh-my-posh-bin
sudo cp mongodb-compass.desktop /usr/share/applications 
