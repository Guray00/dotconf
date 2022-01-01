#!/bin/sh

mv ~/.local/share/gnome-shell/extensions/ ~/.local/share/gnome-shell/extensions_backup_$(date +%s)
tar -xvf /tmp/dotconf/extensions/extensions.tar -C ~/.local/share/gnome-shell &>/dev/null

# import dconf
dconf load /org/gnome/shell/extensions/ < /tmp/dotconf/extensions/extension-settings.dconf

# killall -3 gnome-shell
echo "Esci dalla sessione e rientra per apportare le modifiche. Esegui poi /tmp/scripts/enable_extensions.sh"

