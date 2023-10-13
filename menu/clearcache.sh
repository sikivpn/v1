#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Mod By ZheeVPN"

clear
echo ""
echo ""
echo -e "[ \033[32mInfo\033[0m ] Hapus Sampah Ram"
echo 1 > /proc/sys/vm/drop_caches
sleep 3
echo -e "[ \033[32mok\033[0m ] Sukses Hapus Sampah Ram"
read -n 1 -s -r -p "Klik tombol apa saja untuk ke menu"
menu