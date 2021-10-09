#!/bin/sh

sudo pacman -S zsh --noconfirm

mv ~/.oh-my-zsh ~/.oh-my-zsh_backup_$(date +%s)
mv ~/.zshrc ~/.zshrc_backup_$(date +%s)
mv ~/.p10k.zsh ~/.p10k_backup_$(date +%s).zsh

echo "backup creato in ~/.oh-my-zsh_backup_$(date +%s)"

tar -xvf /tmp/dotconf/dotfiles/zsh/.oh-my-zsh.tar -C ~/ &>/dev/null
cp /tmp/dotconf/dotfiles/zsh/.zshrc ~/.zshrc
cp /tmp/dotconf/dotfiles/zsh/.p10k.zsh ~/.p10k.zsh

echo "configurazione importata avvenuto"
