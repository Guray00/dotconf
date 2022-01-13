# DEBIAN INSTALLER

confirm() {
    # call with a prompt string or use a default
    read -n1 -r -p "${1:-Are you sure? [y/N]} " response
	echo ""
    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

git clone https://github.com/Guray00/dotconf/ /tmp/dotconf/

# ======================
#       QUESTIONS
# ======================
confirm "Installare open in nautilus? [y/N]"
oin=${response,,}

confirm "Forzare utilizzo di x11? [Y/n]"
x11=${response,,}



# ======================
#        INSTALL
# ======================
must=( python3 git )
for i in "${must[@]}"
do
	sudo apt-get -qq install $i -y
done


# ======================
#       time-fix
# ======================
echo "Fix dell'orario in corso"
timedatectl set-local-rtc 1 --adjust-system-clock 


# ======================
#        theme
# ======================
echo "Installando il tema"
/tmp/dotconf/scripts/theme.sh 

# ======================
#        models
# ======================   
echo "Aggiungendo i modelli"
/tmp/dotconf/scripts/models.sh


# ======================
#        nautilus
# ======================   
if [[ "$tw" =~ ^(y)$ ]]
then 
	echo "Installazione open in nautilus"
	sudo apt install python-nautilus python3-gi -y
fi

# ======================
#         x11
# ======================
if [[ "$x11" =~ ^(y)$ ]]
then 
	echo "Preparando il nuovo gestore di screenshot"
	/tmp/dotconf/scripts/screenshot_manager.sh
	sed -i 's/#WaylandEnable=false/WaylandEnable=false/' /etc/gdm/custom.conf
fi


#abilitare le estensioni
echo "Patch di gnome in corso"
/tmp/dotconf/scripts/import_extensions.sh



#abilitare dual booting
#bluetooth
#installazione minima di un set fondamentale di pacchetti
