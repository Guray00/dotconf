#!/bin/sh
yay -S --noconfirm --quiet hyper-git
yay -S --noconfirm --quiet ttf-fira-code

hyper i hypercwd
hyper i hyper-dnd-tabs
hyper i hyper-tabs-enhanced
hyper i hyper-drop-file
hyper i hyper-dark-scrollbar
hyper i hyper-media-control
hyper i hyper-save-windowstate
hyper i hyper-statusline

\cp /tmp/dotconf/dotfiles/hyper/.hyper.js ~/.hyper.js

yay -S --noconfirm nautilus-open-any-terminal
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal hyper
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal keybindings '<Ctrl><Alt>t'
