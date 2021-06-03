#!/bin/sh

sudo pacman -S --needed bluez bluez-utils pipewire-pulse blueman
sudo systemctl enable --now bluetooth
