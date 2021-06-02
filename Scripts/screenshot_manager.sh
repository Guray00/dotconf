#!/bin/sh

# CHANGES SCREENSHOT MANAGER
# reference: https://askubuntu.com/questions/1036473/how-to-change-screenshot-application-to-flameshot-on-ubuntu-18-04/1039949#1039949

yay -Syu --noconfirm flameshot
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command '/usr/bin/flameshot gui'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding 'Print'



# import configuration
cat > ~/.config/flameshot/flameshot.ini <<- EOM
[General]
buttons=@Variant(\0\0\0\x7f\0\0\0\vQList<int>\0\0\0\0\xf\0\0\0\0\0\0\0\x1\0\0\0\x2\0\0\0\x3\0\0\0\x4\0\0\0\x5\0\0\0\x6\0\0\0\x12\0\0\0\a\0\0\0\b\0\0\0\t\0\0\0\x10\0\0\0\n\0\0\0\v\0\0\0\f)
contrastOpacity=216
contrastUiColor=#000000
disabledTrayIcon=true
drawColor=#ffff00
drawThickness=0
savePath=/home/gray/Immagini
savePathFixed=false
showHelp=false
showSidePanelButton=false
showStartupLaunchMessage=false
startupLaunch=true
uiColor=#ffffff

[Shortcuts]
TYPE_ARROW=A
TYPE_CIRCLE=C
TYPE_CIRCLECOUNT=
TYPE_COMMIT_CURRENT_TOOL=Ctrl+Return
TYPE_COPY=Ctrl+C
TYPE_DRAWER=D
TYPE_EXIT=Ctrl+Q
TYPE_IMAGEUPLOADER=Return
TYPE_MARKER=M
TYPE_MOVESELECTION=Ctrl+M
TYPE_MOVE_DOWN=Down
TYPE_MOVE_LEFT=Left
TYPE_MOVE_RIGHT=Right
TYPE_MOVE_UP=Up
TYPE_OPEN_APP=Ctrl+O
TYPE_PENCIL=P
TYPE_PIN=
TYPE_PIXELATE=B
TYPE_RECTANGLE=R
TYPE_REDO=Ctrl+Shift+Z
TYPE_RESIZE_DOWN=Shift+Down
TYPE_RESIZE_LEFT=Shift+Left
TYPE_RESIZE_RIGHT=Shift+Right
TYPE_RESIZE_UP=Shift+Up
TYPE_SAVE=Ctrl+S
TYPE_SELECTION=S
TYPE_SELECTIONINDICATOR=
TYPE_SELECT_ALL=Ctrl+A
TYPE_TEXT=T
TYPE_TOGGLE_PANEL=Space
TYPE_UNDO=Ctrl+Z
EOM
