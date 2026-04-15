#!/bin/bash

# Remove old GUI
echo "Removing GUI"
sudo apt purge -y \
    gnome-shell gnome-session gdm3 \
    plasma-desktop sddm \
    xfce4 xfce4-goodies light-locker

# Install new smaller GUI
echo "Minimalistic GUI"
sudo apt install -y --no-install-recommends \
    xserver-xorg-core xserver-xorg-video-all xserver-xorg-input-all \
    xinit i3-wm lightdm lightdm-gtk-greeter \
    suckless-tools dunst xterm 

# Installing apps for web browser and PDF viewer
echo "Apps for PDF and web"
sudo apt install -y --no-install-recommends \
    surf zathura zathura-pdf-poppler \
    libwebkit2gtk-4.1-0 #

sudo apt install -y fonts-liberation fonts-dejavu-core

# Removing apps that are not needed
echo "Unused apps"
sudo apt purge -y \
    libreoffice* thunderbird firefox-esr chromium* \
    vlc rhythmbox gimp transmission*

# Remove unused packages
sudo apt autoremove --purge -y
sudo apt clean
