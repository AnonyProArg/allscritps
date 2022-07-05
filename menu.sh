ver_user () {
clear
number_of_clients=$(grep -c '^# BEGIN_PEER' /etc/wireguard/wg0.conf)
	if [[ "$number_of_clients" = 0 ]]; then
		echo -ama "No hay clientes configurados"
		sleep 2
		return 0
	fi
	title "DATOS CLIENTES WIREGUARD"
	cl_data
	back
	opcion=$(selection_fun $n)
	[[ $opcion = 0 ]] && return 0
	client=$(grep '^# BEGIN_PEER' /etc/wireguard/wg0.conf | cut -d ' ' -f 3 | sed -n "$opcion"p)
	[[ ! -e ~/"$client.conf" ]] && cp -f ${ADM_tmp}/client_wg/"$client".conf ~/"$client".conf
	echo -ama "CLIENTE QR WIREGUARD"
	print_center -verd "Su archivo de configuracion se encuentra en"
	dircfg=~/"$client.conf"
	print_center -verd "$dircfg"
	echo
	print_center -ama "Quires ver el QR digita [QR]"
	in_opcion_down "Enter para salir"
	if [[ $opcion = @(QR|qr) ]]; then
		echo "CLIENTE QR WIREGUARD"
		qrencode -t ansiutf8 < ~/"$client.conf"
		echo
		print_center -ama "CLIENTE QR WIREGUARD"
		enter
	fi
	sleep 10
  ./menu.sh
}
echo -e "        MINI MENU WIREGUARD"
echo
echo -e "1).- INSTALAR\DESINTALAR WG "
echo -e "2).- VER USERS  "
echo -e "${cor[4]} 3).-\033[1;37m LIST REVENDEDORES   "
echo -e "${cor[4]} 4).-\033[1;37m VPS NUEVA PARA PRUEBAS (GRATIS)"
echo -e "${cor[4]} 0).- SALIR DE SCRIPT"
msg -bar
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
