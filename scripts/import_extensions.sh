#!/bin/sh

mv ~/.local/share/gnome-shell/extensions/ ~/.local/share/gnome-shell/extensions_backup_$(date +%s)
tar -xvf /tmp/dotconf/extensions/extensions.tar -C ~/.local/share/gnome-shell &>/dev/null

# import dconf
dconf load /org/gnome/shell/extensions/ < /tmp/dotconf/extensions/extension-settings.dconf


# enable extensions
gnome-extensions enable arch-update@RaphaelRochet
gnome-extensions enable autohide-battery@sitnik.ru
gnome-extensions enable bluetooth-quick-connect@bjarosze.gmail.com
gnome-extensions enable blur-my-shell@aunetx
gnome-extensions enable compiz-alike-windows-effect@hermes83.github.com
gnome-extensions enable disconnect-wifi@kgshank.net
gnome-extensions enable gnome-shell-Google-search-provider@MrNinso
gnome-extensions enable hidetopbar@mathieu.bidon.ca
gnome-extensions enable middleclickclose@paolo.tranquilli.gmail.com
gnome-extensions enable notification-position@drugo.dev
gnome-extensions enable randomwallpaper@iflow.space
gnome-extensions enable sound-output-device-chooser@kgshank.net
gnome-extensions enable tiling-assistant@leleat-on-github
gnome-extensions enable transparent-window-moving@noobsai.github.com
gnome-extensions enable trayIconsReloaded@selfmade.pl
gnome-extensions enable unity-like-appswitcher@gonza.com
gnome-extensions enable Vitals@CoreCoding.com
gnome-extensions enable windowIsReady_Remover@nunofarruca@gmail.com
gnome-extensions enable windowsNavigator@gnome-shell-extensions.gcampax.github.com

echo "Import done"