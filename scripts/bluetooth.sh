#!/bin/sh

sudo pacman -S --needed --noconfirm bluez bluez-utils pipewire-pulse blueman
sudo systemctl enable --now bluetooth
