#!bin/bash

#Check if Root
if [ "$EUID" -ne 0 ]; then
   echo "Please run as root (sudo)"
   exit 1
fi

mv nvim ~/.config/
apt install xclip
