#!/usr/bin/env bash

set -e
yay -Syu --noconfirm rbenv ruby-build 1password mongodb-compass \
  postman-bin slack-desktop-wayland google-chrome \
  gita kubectl k9s fnm-bin oh-my-posh-bin obsidian


fnm install --lts
sudo sed -i -E 's/Exec=(.*) mongodb-compass %U$/Exec=\1 mongodb-compass --ignore-additional-command-line-flags --password-store="gnome-libsecret" %U/g' /usr/share/applications/mongodb-compass.desktop
sudo sed -i -E 's/Exec=(.*)%U/Exec=env ELECTRON_OZONE_PLATFORM_HINT= \1%U/g' /usr/share/applications/1password.desktop
