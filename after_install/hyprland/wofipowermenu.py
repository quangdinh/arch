#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os

def run_menu():
  keys = (
    "\uf023   Log Out",
    "\uf186   Suspend",
    "\uf2dc   Hibernate",
    "\uf021   Reboot",
    "\uf011   Shutdown",
  )

  actions = (
    "loginctl terminate-session $XDG_SESSION_ID",
    "systemctl suspend",
    "systemctl hibernate",
    "systemctl reboot",
    "systemctl poweroff"
  )

  options = "\n".join(keys)
  choice = os.popen("pkill wofi || echo -e '" + options + "' | wofi -d -i -p 'Power Menu' -W 250 -H 237 -k /dev/null").readline().strip()
  if choice in keys:
    os.popen(actions[keys.index(choice)])

run_menu()
