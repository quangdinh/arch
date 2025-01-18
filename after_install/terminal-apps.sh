#!/usr/bin/env bash

set -e

# Fix terminal apps to use ghostty
sys_apps=(yazi nvim)
dir="/usr/share/applications"
for app in ${sys_apps[@]}; do
  file_name="$dir/$app.desktop"
  echo -ne "Checking $app: "
  if [ -f $file_name ]; then
    if [[ $(cat $file_name | grep ghostty | wc -l) -eq 0 ]]; then
      sudo sed -i -e 's/Terminal=.*/Terminal=false/g' $file_name 
      sudo sed -i -E 's/^Exec=(.*)/Exec=ghostty -e \1/g' $file_name
      echo -ne "Updated\\n"
    else 
      echo -ne "Skipped\\n"
    fi
  else
    echo -ne "Skipping\\n"
  fi
done
