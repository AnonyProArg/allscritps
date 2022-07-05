#!/bin/bash

chmod 777 menu.sh

apt install git


clear

ver_user () {
clear
git clone https://github.com/AnonyProArg/newt /etc/ADMRufu
}
echo -e "        MINI MENU WIREGUARD"
echo
echo -e "1).- INSTALAR\DESINTALAR WG "
echo -e "2).- VER USERS  "
echo -e "${cor[4]} 3).-\033[1;37m LIST REVENDEDORES   "
echo -e "${cor[4]} 4).-\033[1;37m VPS NUEVA PARA PRUEBAS (GRATIS)"
echo -e "${cor[4]} 0).- SALIR DE SCRIPT"
echo
echo -ne "\033[1;37m DIGITE LA OPCIÓN: "
read opcao
case $opcao in
1)
./wireguard-auto.sh
;;
2)
ver_user
;;
3)
lista
;;
4)
vps
;;
0)
exit
;;
esac
