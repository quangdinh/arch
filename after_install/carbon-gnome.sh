#!/usr/bin/env bash

set -e
./reflector.sh
./thinkpad.sh
./firewall.sh
./gnome.sh
./dark_mode.sh
./carbon-apps.sh
