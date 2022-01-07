#!/bin/sh

mv ~/.local/share/gnome-shell/extensions/ ~/.local/share/gnome-shell/extensions_backup_$(date +%s)
tar -xvf /tmp/dotconf/extensions/extensions.tar -C ~/.local/share/gnome-shell &>/dev/null

# import dconf
dconf load /org/gnome/shell/extensions/ < /tmp/dotconf/extensions/extension-settings.dconf

# killall -3 gnome-shell
echo "Riavvia gnome-shell digitando alt+F2 e al suo interno il comando r. Premi invio poi per continuare"
read 
/tmp/dotconf/extensions/enable_extensions.sh