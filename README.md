# dotconf
Repo di configurazione per EndevourOS [Arch linux]

Se è già stato effettuato un clone rimuovere la cartella con:
```bash
rm -Rf /tmp/dotconf/
```

Per inizializzare la repo:
```bash
git clone https://github.com/Guray00/dotconf/ /tmp/dotconf/ && cd /tmp/dotconf/scripts && chmod a+rwx *.sh
```



## Software
#### Pacman
Per recuperare la lista puoi digitare `pacman -Qqen`
```bash
sudo pacman -S - < /tmp/dotconf/pkgs/pacman_list.txt
```
Per attivare il parallel download su pacman è sufficiente [reference](https://ostechnix.com/enable-parallel-downloading-in-pacman-in-arch-linux/): 
```bash
sudo nano /etc/pacman.conf
```
e inserire sotto # misc
```bash
ParallelDownloads = 5
```

#### Aur (yay)
Per recuperare la lista puoi digitare `pacman -Qm`
```bash
yay -S - < /tmp/dotconf/pkgs/aur_list.txt
```

## Gnome Extensions backup
Reference: https://www.reddit.com/r/gnome/comments/afuw4h/moving_extensions_and_their_settings_to_new/

### Export
```bash
/tmp/dotconf/scripts/backup_extensions.sh
```

### Import

```bash
/tmp/dotconf/scripts/import_extensions.sh
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
/tmp/dotconf/scripts/bluetooth.sh
```

## Modelli
Per ottenere rapidamente i modelli per la creazione di nuovi file eseguire la patch:
```bash
/tmp/dotconf/scripts/models.sh
```

## Open in Code
```bash
wget -qO- https://raw.githubusercontent.com/cra0zy/code-nautilus/master/install.sh | bash
```

## Terminal (Hyper)
Installa completo di plugin il terminale Hyper
```bash
/tmp/dotconf/scripts/terminal.sh
```

## Open in Hyper
Consente di aprire nella cartella corrente hyper
```bash
yay -S nautilus-open-any-terminal
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal hyper
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal keybindings '<Ctrl><Alt>t'
```

## Screenshot
Il gestore screenshot di default non è molto utile in quanto non consente di editare facilmente gli screenshot, viene dunque sostituito in favore di flameshot applicando la patch:
```bash
/tmp/dotconf/scripts/screenshot_manager.sh
```

## Fonts
Pacchetti font molto utili e gradevoli:
```bash
sudo pacman -S --noconfirm ttf-fira-code
yay -S --noconfirm ttf-ms-fonts
```


## Tema e icone
Installa il tema whitesur e relative icone
```bash
/tmp/dotconf/scripts/theme.sh
```
## ZSH
Comandi per installazione di oh my zsh. Sostituire con uno script
```bash
sudo pacman -S zsh
curl -L http://install.ohmyz.sh | sh
```

# TODO
- copy path per nautilus
- rimozione da nautilus di "open in terminal"
- patch di traduzione per "open in code" e "open in hyper"
