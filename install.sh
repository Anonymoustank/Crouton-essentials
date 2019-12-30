#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

cd /usr/local/bin

echo "Downloading scripts"

curl -L -o volume_down https://raw.githubusercontent.com/Anonymoustank/Crouton-essentials/master/volume_down

chmod +x volume_down

curl -L -o volume_up https://raw.githubusercontent.com/Anonymoustank/Crouton-essentials/master/volume_up

chmod +x volume_up

curl -L -o volume_mute https://raw.githubusercontent.com/Anonymoustank/Crouton-essentials/master/volume_mute

chmod +x volume_mute

cd /home/*

curl -L -o .xbindkeysrc https://raw.githubusercontent.com/Anonymoustank/Crouton-essentials/master/.xbindkeysrc

echo "Restart your chroot for the changes to take effect"
