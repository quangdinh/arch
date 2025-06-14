#!/usr/bin/env bash

set -e
yay -Syu --noconfirm rbenv ruby-build 1password mongodb-compass-bin \
  postman-bin slack-desktop-wayland google-chrome \
  gita kubectl k9s fnm-bin oh-my-posh-bin obsidian onlyoffice-bin


fnm install --lts
sudo sed -i -E 's/Exec=(.*) mongodb-compass %U$/Exec=\1 mongodb-compass --ignore-additional-command-line-flags --password-store="gnome-libsecret" %U/g' /usr/share/applications/mongodb-compass.desktop
sudo sed -i -E 's/Exec=(.*)%U/Exec=\1 --gtk-version=3 %U/g' /usr/share/applications/1password.desktop
