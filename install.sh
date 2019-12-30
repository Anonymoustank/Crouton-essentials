#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

cd /usr/local/bin

curl -L -o volume_down

curl -L -o volume_up

curl -L -o volume_mute

cd /home/*

curl -L -o .xbindkeysrc
