#!/usr/bin/env bash

set -e
yay -Syu --noconfirm rbenv ruby-build nvm 1password mongodb-compass \
  postman-bin slack-desktop-wayland google-chrome \
  gita kubectl k9s
