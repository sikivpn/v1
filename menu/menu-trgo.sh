#!/bin/bash
#auto script by FV STORE
#===========================
# color
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
YEL='\e[33m'
red='\e[31m'
green='\e[32m'
GREEEN='\e[1;32m'
blue='\e[34m'
PURPLE='\e[35m'
CY='\e[1;36m'
Lred='\e[91m'
CYAN='\e[96m'
Lgreen='\e[92m'
YELLOW='\e[93m'
WHI='\e[97m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
BIYellow='\033[1;33m'
clear
NC="\e[0m"
RED="\033[0;31m" 

BURIQ () {
    curl -sS https://raw.githubusercontent.com/sikivpn/izin/main/ip > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/sikivpn/izin/main/ip | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/sikivpn/izin/main/ip | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION
if [ -f /home/needupdate ]; then
red "Your script need to update first !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
echo -ne
else
red "Permission Denied!"
exit 0
fi
##################
MYIP=$(wget -qO- ipinfo.io/ip);

clear
echo -e "${CY}┌──────────────────────────────┐${NC}"
echo -e "${CY}│${WHI}       << TROJAN GO >>   ${NC}"
echo -e "${CY}└──────────────────────────────┘${NC}"
echo ""
echo -e "${CY}┌──────────────────────────────┐${NC}"
echo -e "${CY}│${NC}${CYAN} [${WHI}1${CYAN}]${CY} Create Trojan Go Account   ${NC}"
echo -e "${CY}│${NC}${CYAN} [${WHI}2${CYAN}]${CY} Trial Trojan Go Account    ${NC}"
echo -e "${CY}│${NC}${CYAN} [${WHI}3${CYAN}]${CY} Renew Trojan Go Account    ${NC}"
echo -e "${CY}│${NC}${CYAN} [${WHI}4${CYAN}]${CY} Delete Trojan Go Account   ${NC}"
echo -e "${CY}│${NC}${CYAN} [${WHI}5${CYAN}]${CY} Check User Login Trojan Go ${NC}"
echo -e "${CY}│${NC}${CYAN} [${WHI}0${CYAN}]${BIYellow} Kembali ke menu  ${NC}"
echo -e "${CY}└──────────────────────────────┘${NC}"
echo -e "${WHI}"
read -p " Select menu << 1 - 5 >> : " opt
case $opt in
1) clear ; addtrgo ;;
2) clear ; trialtrojango ;;
3) clear ; renewtrgo ;;
4) clear ; deltrgo ;;
5) clear ; cektrgo ;;
0) clear ; menu ;;
x) exit ;;
*) echo "Anda salah memilih menu" ; sleep 1 ; menu-trojan ;;
esac
