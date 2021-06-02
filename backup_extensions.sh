# moving to tmp directory
cd /tmp/dotconf

# removing backup if exists
rm -f /tmp/dotconf/extensions.tar
rm -f /tmp/dotconf/extension-settings.dconf

# creating a zip file with infos
tar -cvf extensions.tar ~/.local/share/gnome-shell/extensions/

# backing up dconf
dconf dump /org/gnome/shell/extensions/ > extension-settings.dconf
