#!/bin/sh

# moving to tmp directory
cd /tmp/dotconf

# removing backup if exists
rm -Rf /tmp/dotconf/extensions

# create folder
mkdir /tmp/dotconf/extensions

# creating a tar file with infos
cp -r ~/.local/share/gnome-shell/extensions/ /tmp/dotconf/extensions/extensions &>/dev/null
cd /tmp/dotconf/extensions
tar -cvf ./extensions.tar ./extensions/ &>/dev/null
rm -R /tmp/dotconf/extensions/extensions

# backing up dconf
dconf dump /org/gnome/shell/extensions/ > /tmp/dotconf/extensions/extension-settings.dconf

cd /tmp/dotconf/
echo "Backup done"