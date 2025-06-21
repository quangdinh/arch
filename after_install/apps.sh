#!/usr/bin/env bash

set -e
yay -Syu --noconfirm rbenv ruby-build 1password \
  postman-bin slack-desktop-wayland google-chrome \
  gita kubectl k9s fnm-bin oh-my-posh-bin obsidian 

yay -S --noconfirm --mflags "--nocheck" mongodb-compass-bin


fnm install --lts
sudo sed -i -E 's/Exec=(.*) mongodb-compass %U$/Exec=\1 mongodb-compass --gtk-version=3 --ignore-additional-command-line-flags --password-store="gnome-libsecret" %U/g' /usr/share/applications/mongodb-compass.desktop
