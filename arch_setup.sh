##
## EPITECH PROJECT, 2019
## {EPITECH}projects
## File description:
## arch_setup.sh
##

#!/bin/bash

vert='\e[0;32m'
rouge='\e[0;31m'
neutre='\e[0;m'
NetworkManager
systemctl enable NetworkManager
systemctl start NetworkManager
pacman -S xfce4 xorg gdm xf86-input-synaptics
systemctl enable gdm
clear
lspci | grep VGA
echo -e "${vert}Recherchez le nom du driver correspondant au matériel ci-dessus\n${neutre}"
sleep 1
read -p "Entrez le nom du driver en question: " driver
pacman -S $driver
clear
read -p "Souhaitez vous installer SSH (Y/n): " SSH
if [ "$SSH" = "Y" ]
then
    pacman -S openssh
elif ["$SSH" = "y" ]
then
    pacman -S openssh
fi
clear
read -p "Souhaitez vous installer Sudo (Y/n): " sudo
if [ "$sudo" = "Y" ]
then
    pacman -S sudo
elif ["$sudo" = "y" ]
then
    pacman -S sudo
fi
echo -e "${rouge}-------FIN DE CONFIGURATION-------\n\n${neutre}"
clear
echo -e "${rouge}-------EXTINCTION IMMINENTE-------\n\n${neutre}"
sleep 1
clear
echo -e "${rouge}-------EXTINCTION IMMINENTE .-------\n\n${neutre}"
sleep 1
clear
echo -e "${rouge}-------EXTINCTION IMMINENTE ..-------\n\n${neutre}"
sleep 1
clear
echo -e "${rouge}-------EXTINCTION IMMINENTE ...-------\n\n${neutre}"
shutdown now