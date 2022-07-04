mkdir /etc/adm-lite >/dev/null 2>&1
  cd /etc
  wget https://raw.githubusercontent.com/NetVPS/Multi-Script/main/ChuG/adm-lite.tar.xz >/dev/null 2>&1
  tar -xf adm-lite.tar.xz >/dev/null 2>&1
  chmod +x adm-lite.tar.xz >/dev/null 2>&1
  rm -rf /etc/adm-lite.tar.xz
  cd
  chmod -R 755 /etc/adm-lite
  /bin/cp /etc/skel/.bashrc ~/
  rm -rf /etc/bash.bashrc >/dev/null 2>&1
  echo "$slogan" >/etc/adm-lite/menu_credito
  fecha=$(date +"%d-%m-%y")
  dom='base64 -d'
  SCPdir="/etc/adm-lite"
  SCPinstal="$HOME/install"
  SCPidioma="${SCPdir}"
  SCPusr="${SCPdir}"
  SCPfrm="${SCPdir}"
  SCPinst="${SCPdir}"

  cd /etc/adm-lite
  echo "cd /etc/adm-lite && ./menu" >/bin/menu
  echo "cd /etc/adm-lite && ./menu" >/bin/cgh
  echo "cd /etc/adm-lite && ./menu" >/bin/adm
  chmod +x /bin/menu
  chmod +x /bin/cgh
  chmod +x /bin/adm
  cd $HOME
  echo ""
  rm -rf mkdir /bin/ejecutar >/dev/null
  [[ -e /etc/adm-lite/menu_credito ]] && ress="$(cat </etc/adm-lite/menu_credito) " || ress="NULL ( no found ) "
  chmod +x /etc/adm-lite/*
  [[ -e ${SCPinstal}/v-local.log ]] && vv="$(cat <${SCPinstal}/v-local.log)" || vv="NULL"
  #cd /etc/adm-lite && bash cabecalho --instalar
  echo "verify" >$(echo -e $(echo 2f62696e2f766572696679737973 | sed 's/../\\x&/g;s/$/ /'))
  fecha=$(date +"%d-%m-%y")

  [[ -d /bin/ejecutar ]] && rm -rf /bin/ejecutar
  [[ -e /etc/adm-lite/gerar.sh ]] && rm -f /etc/adm-lite/gerar.sh
  mkdir /bin/ejecutar
  echo $fecha >/bin/ejecutar/fecha
  [[ -e /bin/ejecutar/menu_credito ]] && echo "" || echo "$(cat /etc/adm-lite/menu_credito)" >/bin/ejecutar/menu_credito && chmod +x /bin/ejecutar/menu_credito
  wget -q -O /bin/toolmaster https://raw.githubusercontent.com/NetVPS/Multi-Script/main/ChuG/utilitarios/toolmaster
  chmod +x /bin/toolmaster
  echo 'source <(curl -sSL https://raw.githubusercontent.com/NetVPS/Multi-Script/main/ChuG/utilitarios/free-men.sh)' >/bin/ejecutar/echo-ram.sh
  echo 'wget -q -O /bin/ejecutar/v-new.log https://raw.githubusercontent.com/NetVPS/Multi-Script/main/ChuG/utilitarios/v-new.log' >>/bin/ejecutar/echo-ram.sh && bash /bin/ejecutar/echo-ram.sh

  echo "clear" >>/root/.bashrc
  echo 'killall menu > /dev/null 2>&1' >>/root/.bashrc
  sed '/ChumoGH/ d' /root/.bashrc >/root/.bashrc.cp
  sed '/echo/ d' /root/.bashrc.cp >/root/.bashrc
  sed '/ejecutar/ d' /root/.bashrc >/root/.bashrc.cp
  sed '/date/ d' /root/.bashrc.cp >/root/.bashrc
  rm -f /root/.bashrc.cp
  echo 'DATE=$(date +"%d-%m-%y")' >>/root/.bashrc
  echo 'TIME=$(date +"%T")' >>/root/.bashrc
  echo 'figlet -k ChumoGH | lolcat' >>/root/.bashrc
  echo 'echo -e ""' >>/root/.bashrc
  echo 'bash /bin/ejecutar/echo-ram.sh' >>/root/.bashrc
  echo 'echo -e " Fecha de Instalacion : " $(cat < /bin/ejecutar/fecha)' >>/root/.bashrc
  echo 'echo -e " Nombre del Servidor : $HOSTNAME"' >>/root/.bashrc
  echo 'echo -e " Tiempo en Linea : $(uptime -p)"' >>/root/.bashrc
  echo 'echo -e " Memoria Libre : $(cat < /bin/ejecutar/raml)"' >>/root/.bashrc
  echo 'echo -e " Fecha del Servidor : $DATE"' >>/root/.bashrc
  echo 'echo -e " Hora del Servidor : $TIME"' >>/root/.bashrc
  echo 'echo -e ""' >>/root/.bashrc
  echo 'echo -e " Bienvenido!"' >>.bashrc
  echo 'echo -e "\033[1;43m Teclee cgh , menu o adm para ver el MENU\033[0m."' >>/root/.bashrc
  echo 'echo -e ""' >>/root/.bashrc

  [[ -z $name ]] && {
    rm -f /root/name
  } || {
    echo $name >/etc/adm-lite/name
    chmod +x /etc/adm-lite/name
    echo $name >/root/name
  }
  opti=0
  echo 0 >/bin/ejecutar/val
  echo 0 >/bin/ejecutar/uskill
  echo "desactivado" >/bin/ejecutar/val1
  [[ -e /bin/ejecutar/menu_credito ]] && echo "" || echo "$(cat /etc/adm-lite/menu_credito)" >/bin/ejecutar/menu_credito && chmod +x /bin/ejecutar/menu_credito
  echo "Verified【 $(cat /bin/ejecutar/menu_credito)" >/bin/ejecutar/exito
  clear && clear
  msg -bar
  echo -e "\e[1;92m             >> INSTALACION COMPLETADA <<" && msg bar2
  echo -e "      COMANDO PRINCIPAL PARA ENTRAR AL PANEL "
  echo -e "                      \033[1;41m  menu  \033[0;37m" && msg -bar2
}
