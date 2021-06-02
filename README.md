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

## Screenshot
```bash
./screenshot_manager.sh
```
