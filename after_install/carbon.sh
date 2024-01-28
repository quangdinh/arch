#!/usr/bin/env bash

set -e
./reflector.sh
./thinkpad.sh
./firewall.sh
./hyprland.sh
./dark_mode.sh
./carbon-apps.sh
