#!/usr/bin/env bash

set -e
./reflector.sh
./thinkpad.sh
./firewall.sh
./hyprland.sh
./fingerprint.sh
./ms-fonts.sh
./dark_mode.sh
