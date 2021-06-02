# dotconf
Repo di configurazione per EndevourOS [Arch linux]


Per inizializzare la repo:
```bash
git clone https://github.com/Guray00/dotconf/ /tmp/dotconf/ && cd /tmp/dotconf/ && chmod a+rwx *.sh
```



## Software
#### Pacman
Per recuperare la lista puoi digitare `pacman -Qqen`
```bash
sudo pacman -S - < pacman_list.txt
```

#### Aur (yay)
Per recuperare la lista puoi digitare `pacman -Qm`
```bash
yay -S - < aur_list.txt
```

## Gnome Extensions backup
Reference: https://www.reddit.com/r/gnome/comments/afuw4h/moving_extensions_and_their_settings_to_new/

### Export
If your extensions are not from installed packages (not installed through your package manager) then they'll be located in:

```bash
~/.local/share/gnome-shell/extensions/
```

You can easily back those up and restore them to the same folder on another PC. As for the settings, you can export them from dconf:

```bash
dconf dump /org/gnome/shell/extensions/ > extension-settings.dconf
```

### Import
```bash
~/.local/share/gnome-shell/extensions/
```

Although the file extension doesn't matter really, and then on the PC you're restoring them to, use:

```bash
dconf load /org/gnome/shell/extensions/ < extension-settings.dconf
```

## SSH senza password
Per accedere tramite ssh a un host senza inserire ogni volta la password sarà necessario:

1) Generare (la prima volta e basta, non uno per host) una chiave
```bash
ssh-keygen
```

2) eseguire il login al host 
```bash
ssh-copy-id -i ~/.ssh/id_rsa.pub remote-host
```

_10.8.0.1 per server e 10.8.0.7 per rasp_

## Bluetooth
Su endevourOS il bluetooth è disabilitato di default, eseguire la patch con:
```bash
./bluetooth.sh
```

## Screenshot
Il gestore screenshot di default non è molto utile in quanto non consente di editare facilmente gli screenshot, viene dunque sostituito in favore di flameshot applicando la patch:
```bash
./screenshot_manager.sh
```
