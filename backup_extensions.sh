# moving to tmp directory
cd /tmp/dotconf

# removing backup if exists
rm -Rf /tmp/dotconf/extensions

mkdir /tmp/dotconf/extensions

# creating a zip file with infos
tar -cvf ./extensions/extensions.tar ~/.local/share/gnome-shell/extensions/

# backing up dconf
dconf dump /org/gnome/shell/extensions/ > ./extensions/extension-settings.dconf
