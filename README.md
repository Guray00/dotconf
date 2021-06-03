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

## Screenshot
Il gestore screenshot di default non è molto utile in quanto non consente di editare facilmente gli screenshot, viene dunque sostituito in favore di flameshot applicando la patch:
```bash
/tmp/dotconf/scripts/screenshot_manager.sh
```
