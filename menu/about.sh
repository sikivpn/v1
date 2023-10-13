#!/bin/bash
# FV STORE
# ━━━━━━━━━━━━━━━━━━━━━━━━━
MYIP=$(wget -qO- ipinfo.io/ip);
echo -e 'Mod By ZheeVPN'
sleep 2
clear
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " \e[0;100;33m       • AutoScript Mod By ZheeVPN •            \e[0m"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[97   >>> Service & Port"
echo -e "\e[97   - OpenSSH            : 22"
echo -e "\e[97   - SSH Websocket      : 80"
echo -e "\e[97   - SSH SSL Websocket  : 443"
echo -e "\e[97   - Stunnel4           : 447, 777"
echo -e "\e[97   - Dropbear           : 109, 143"
echo -e "\e[97   - UDP custom         : 1-65535
echo -e "\e[97   - Badvpn             : 7100-7300"
echo -e "\e[97   - Nginx Ws           : 81, 80, 443"
echo -e "\e[97   - Vmess TLS          : 443"
echo -e "\e[97   - Vmess None TLS     : 80"
echo -e "\e[97   - Vless TLS          : 443"
echo -e "\e[97   - Vless None TLS     : 80"
echo -e "\e[97   - Trojan GRPC        : 443"
echo -e "\e[97   - Trojan WS          : 443"
echo -e "\e[97   - Trojan Go          : 443"
echo -e "\e[97   >>> Server Information & Other Features"
echo -e "\e[97   - Timezone           : Asia/Jakarta (GMT +7)"
echo -e "\e[97   - Fail2Ban           : [ON]"
echo -e "\e[97   - Dflate             : [ON]"
echo -e "\e[97   - IPtables           : [ON]"
echo -e "\e[97   - Auto-Reboot        : [ON]"
echo -e "\e[97   - IPv6               : [OFF]"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -p "Klik enter untuk kembali ke menu"
menu-set
