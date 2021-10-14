#!/bin/sh

mv ~/.local/share/gnome-shell/extensions/ ~/.local/share/gnome-shell/extensions_backup_$(date +%s)
tar -xvf /tmp/dotconf/extensions/extensions.tar -C ~/.local/share/gnome-shell &>/dev/null

# import dconf
dconf load /org/gnome/shell/extensions/ < /tmp/dotconf/extensions/extension-settings.dconf

killall -3 gnome-shell

# enable extensions
gnome-extensions enable windowsNavigator@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable hidetopbar@mathieu.bidon.ca
gnome-extensions enable arch-update@RaphaelRochet
gnome-extensions enable gnome-shell-Google-search-provider@MrNinso
gnome-extensions enable sound-output-device-chooser@kgshank.net
gnome-extensions enable tiling-assistant@leleat-on-github
gnome-extensions enable unity-like-appswitcher@gonza.com
gnome-extensions enable trayIconsReloaded@selfmade.pl
gnome-extensions enable bluetooth-quick-connect@bjarosze.gmail.com
gnome-extensions enable disconnect-wifi@kgshank.net
gnome-extensions enable Vitals@CoreCoding.com
gnome-extensions enable middleclickclose@paolo.tranquilli.gmail.com
gnome-extensions enable transparent-window-moving@noobsai.github.com
gnome-extensions enable autohide-battery@sitnik.ru
gnome-extensions enable auto-move-windows@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable compiz-alike-windows-effect@hermes83.github.com
gnome-extensions enable app-switcher_current_workspace_first@fawtytoo
gnome-extensions enable gsconnect@andyholmes.github.io
gnome-extensions enable blur-my-shell@aunetx
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable places-menu@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable native-window-placement@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable drive-menu@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable randomwallpaper@iflow.space
gnome-extensions enable volume-mixer@evermiss.net
gnome-extensions enable todolist@tomMoral.org
gnome-extensions enable notification-timeout@chlumskyvaclav.gmail.com
gnome-extensions enable expandable-notifications@kaan.g.inam.org
gnome-extensions enable panel-osd@berend.de.schouwer.gmail.com
gnome-extensions enable extensions-sync@elhan.io
gnome-extensions enable better-osd@hllvc
gnome-extensions enable windowIsReady_Remover@nunofarruca@gmail.com

echo "Import done"
