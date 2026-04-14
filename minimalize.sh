#!/bin/bash

# Purge UI
sudo apt purge -y task-gnome-desktop gnome-core "task-*-desktop"
sudo apt autoremove --purge -y

sudo apt update

# Graphic server 
sudo apt install --no-install-recommends -y \
    xserver-xorg-core \
    xserver-xorg-video-fbdev \
    xinit \
    libwebkit2gtk-4.0-37
# Apps
sudo apt install --no-install-recommends -y \
    badwolf \
    zathura \
    zathura-pdf-poppler

    
# Purge docks and manuals
sudo rm -rf /usr/share/doc/* /usr/share/man/* /usr/share/info/*

echo "exec badwolf" > ~/.xinitrc
