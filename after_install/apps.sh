#!/usr/bin/env bash

set -e
yay -Syu --noconfirm rbenv ruby-build 1password \
  postman-bin slack-desktop-wayland google-chrome \
  gita kubectl k9s fnm-bin oh-my-posh-bin obsidian 

yay -S --noconfirm --mflags "--nocheck" mongodb-compass-bin


fnm install --lts
sudo sed -i -E 's/Exec=mongodb-compass %U$/Exec=mongodb-compass --gtk-version=3 --ignore-additional-command-line-flags --password-store="gnome-libsecret" %U/g' /usr/share/applications/mongodb-compass.desktop
sudo sed -i -E 's/Exec=(.*) %U/Exec=\1 --gtk-version=3 %U/g' /usr/share/applications/slack.desktop
