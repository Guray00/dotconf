#!/bin/sh

# moving to tmp directory
cd /tmp/dotconf

# removing backup if exists
echo "rimuovo eventuali backup passati"
rm -rf /tmp/dotconf/dotfiles/zsh/

# create folder
echo "creo la cartella"
mkdir /tmp/dotconf/dotfiles/zsh

# creating a tar file with infos
echo "copio i file in dotconf"
cp -r ~/.oh-my-zsh/ /tmp/dotconf/dotfiles/zsh/.oh-my-zsh &>/dev/null
cd /tmp/dotconf/dotfiles/zsh

echo "creo  l'archivio"
tar -cvf ./.oh-my-zsh.tar ./.oh-my-zsh &>/dev/null
rm -rf /tmp/dotconf/dotfiles/zsh/.oh-my-zsh

# backing up dconf
echo "copio i file di configurazione"
cp ~/.zshrc /tmp/dotconf/dotfiles/zsh/.zshrc
cp ~/.p10k.zsh /tmp/dotconf/dotfiles/zsh/.p10k.zsh

cd /tmp/dotconf/
echo "Backup done"
