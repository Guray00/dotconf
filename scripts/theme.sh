#!/bin/sh
#https://github.com/vinceliuice/WhiteSur-gtk-theme

# theme
rm -Rf /tmp/dotconf/.theme
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme /tmp/dotconf/.theme
/tmp/dotconf/.theme/install.sh -c dark -t pink --icon simple

# icons
rm -Rf /tmp/dotconf/.icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme /tmp/dotconf/.icons
/tmp/dotconf/.icons/install.sh

# cursor
rm -Rf /tmp/dotconf/.cursor
git clone https://github.com/vinceliuice/WhiteSur-cursors /tmp/dotconf/.cursor
/tmp/dotconf/.cursor/install.sh

# removes junk
rm -Rf /tmp/dotconf/.theme
rm -Rf /tmp/dotconf/.icons
rm -Rf /tmp/dotconf/.cursor

# abilito l'estensione dei temi
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# abilito i setup
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-dark-solid"  # imposta il tema delle applicazioni
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur"            # imposta le icone
gsettings set org.gnome.desktop.interface cursor-theme "WhiteSur-cursors"  # imposta il cursore
gsettings set org.gnome.shell.extensions.user-theme name "WhiteSur-dark"   # imposta la shell
