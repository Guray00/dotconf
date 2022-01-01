# dotconf
Repo di configurazione per EndevourOS [Arch linux] Si consiglia di utilizzare tali istruzioni solo su distribuzioni arch derivate con ambiente GNOME.

Se è già stato effettuato un clone rimuovere la cartella con:
```bash
rm -Rf /tmp/dotconf/
```

Per inizializzare la repo:
```bash
git clone https://github.com/Guray00/dotconf/ /tmp/dotconf/ && cd /tmp/dotconf/scripts && chmod a+rwx *.sh
```

## Dual booting windows ([os probe](https://discovery.endeavouros.com/installation/grub-dual-booting/2021/07/))
```bash
sudo pacman -S --needed os-prober
```

successivamente:
```bash
sudo nano /etc/default/grub
```
e impostare alla fine del file la voce `GRUB_DISABLE_OS_PROBER=false`

Infine rigenerare il file di grub:
```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg
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
per poi installare:
```bash
yay -S - < /tmp/dotconf/pkgs/pkgs.txt --needed --noconfirm
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
Ricordati di uscire e rientrare nella sessione.

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

#### Open in Hyper
Consente di aprire nella cartella corrente hyper
```bash
yay -S nautilus-open-any-terminal --needed --noconfirm
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
sudo pacman -S --noconfirm ttf-fira-code --needed --noconfirm
yay -S --noconfirm ttf-ms-fonts --needed --noconfirm
```


## Tema e icone
Installa il tema whitesur e relative icone
```bash
/tmp/dotconf/scripts/theme.sh
```
## ZSH

### Backup automatico
```bash
/tmp/dotconf/scripts/backup_zsh.sh
```

### Import automatico
```bash
/tmp/dotconf/scripts/import_zsh.sh
```
ATTENZIONE:modificare nel file `gray` con il nome dell'utente.

### Manuale (sconsigliato)
Comandi per installazione di oh my zsh.
```bash
sudo pacman -S zsh --needed --noconfirm
curl -L http://install.ohmyz.sh | sh
```

#### Theming
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
E' necessario poi impostare `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`

### Impostare come default
```bash
chsh -s $(which zsh)
```
Una volta fatto ciò sarà necessario `uscire` e rientrare nella sessione.

## Time-Fix
Per risolvere l'errore dell'orologio tra windows e linux.
```bash
timedatectl set-local-rtc 1 --adjust-system-clock 
```

## Nautilus copy path
Per copiare rapidamente il path da nautilus.
```bash
yay -S nautilus-copy-path
```

## Crontab
Per avere cron su arch.

```bash
sudo pacman -S cronie --needed --noconfirm
sudo systemctl start cronie 
sudo systemctl enable cronie
```
E' inolte suggerire di cambiare in nano il default text manager:
```bash
echo "export EDITOR = nano" >> $ HOME / .bashrc export EDITOR = nano
```

## Virtual cable
Cavo virtuale per le registrazioni
```bash
pactl load-module module-null-sink sink_name=Virtual
pactl load-module module-loopback sink=Virtual
```

# TODO
- rimozione da nautilus di "open in terminal"
- patch di traduzione per "open in code" e "open in hyper"
- dotfile di gimp
