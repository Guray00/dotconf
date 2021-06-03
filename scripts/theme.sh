#!/bin/sh
#https://github.com/vinceliuice/WhiteSur-gtk-theme

# theme
rm -Rf /tmp/dotconf/.theme
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme /tmp/dotconf/.theme
/tmp/dotconf/.theme/install.sh -c dark --icon arch

# icons
rm -Rf /tmp/dotconf/.icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme /tmp/dotconf/.icons
/tmp/dotconf/.icons/install.sh

# removes junk
rm -Rf /tmp/dotconf/.theme
rm -Rf /tmp/dotconf/.icons
