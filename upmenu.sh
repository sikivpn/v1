#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
# // Color Valid
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\033[0m'
# ============================================
clear
echo -e " [ INFO ] Downloading Update File Dalam 3s...."
sleep 3
echo ""
cd /usr/bin/
# menu
echo -e "${BICyan}[${NC}""${BIYellow}Notes${NC}""${BICyan}]${NC}""${BIWhite} INSTALLING MENU...${NC}"
echo ""
sleep 1
wget -O menu "https://raw.githubusercontent.com/sikivpn/v1/main/menu/menu.sh" && chmod +x menu
wget -O menu-vmess "https://raw.githubusercontent.com/sikivpn/v1/main/menu/menu-vmess.sh" && chmod +x menu-vmess
wget -O menu-vless "https://raw.githubusercontent.com/sikivpn/v1/main/menu/menu-vless.sh" && chmod +x menu-vless
wget -O running "https://raw.githubusercontent.com/sikivpn/v1/main/menu/running.sh" && chmod +x running
wget -O clearcache "https://raw.githubusercontent.com/sikivpn/v1/main/menu/clearcache.sh" && chmod +x clearcache
wget -O menu-trgo "https://raw.githubusercontent.com/sikivpn/v1/main/menu/menu-trgo.sh" && chmod +x trgo
wget -O menu-trojan "https://raw.githubusercontent.com/sikivpn/v1/main/menu/menu-trojan.sh" && chmod +x trojan
clear
# menu ssh ovpn
echo -e "${BICyan}[${NC}""${BIYellow}Notes${NC}""${BICyan}]${NC}""${BIWhite} INSTALING SSH OVPN...${NC}"
echo ""
sleep 1
wget -O menu-ssh "https://raw.githubusercontent.com/sikivpn/v1/main/menu/menu-ssh.sh" && chmod +x menu-ssh
clear
# menu system
echo -e "${BICyan}[${NC}""${BIYellow}Notes${NC}""${BICyan}]${NC}""${BIWhite} INSTALING SYSTEM...${NC}"
echo ""
sleep 1
wget -O menu-set "https://raw.githubusercontent.com/sikivpn/v1/main/menu/menu-set.sh" && chmod +x menu-set
wget -O menu-domain "https://raw.githubusercontent.com/sikivpn/v1/main/menu/menu-domain.sh" && chmod +x menu-domain
wget -O add-host "https://raw.githubusercontent.com/sikivpn/v1/main/ssh/add-host.sh" && chmod +x add-host
wget -O certv2ray "https://raw.githubusercontent.com/sikivpn/v1/main/xray/certv2ray.sh" && chmod +x certv2ray
wget -O menu-webmin "https://raw.githubusercontent.com/sikivpn/v1/main/menu/menu-webmin.sh" && chmod +x menu-webmin
wget -O speedtest "https://raw.githubusercontent.com/sikivpn/v1/main/ssh/speedtest_cli.py" && chmod +x speedtest
wget -O about "https://raw.githubusercontent.com/sikivpn/v1/not/main/menu/about.sh" && chmod +x about
wget -O auto-reboot "https://raw.githubusercontent.com/sikivpn/v1/main/menu/auto-reboot.sh" && chmod +x auto-reboot
wget -O restart "https://raw.githubusercontent.com/sikivpn/v1/main/menu/restart.sh" && chmod +x restart
wget -O bw "https://raw.githubusercontent.com/sikivpn/v1/main/menu/bw.sh" && chmod +x bw
clear

# Vmess
wget -O add-ws "https://raw.githubusercontent.com/sikivpn/v1/main/xray/add-ws.sh" && chmod +x add-ws
wget -O trialvmess "https://raw.githubusercontent.com/zheevpn/a/main/xray/trialvmess.sh" && chmod +x trialvmess
wget -O renew-ws "https://raw.githubusercontent.com/zheevpn/a/main/xray/renew-ws.sh" && chmod +x renew-ws
wget -O del-ws "https://raw.githubusercontent.com/zheevpn/a/main/xray/del-ws.sh" && chmod +x del-ws
wget -O cek-ws "https://raw.githubusercontent.com/zheevpn/a/main/xray/cek-ws.sh" && chmod +x cek-ws

# Vless
wget -O add-vless "https://raw.githubusercontent.com/sikivpn/v1/main/xray/add-vless.sh" && chmod +x add-vless
wget -O trialvless "https://raw.githubusercontent.com/zheevpn/a/main/xray/trialvless.sh" && chmod +x trialvless
wget -O renew-vless "https://raw.githubusercontent.com/zheevpn/a/main/xray/renew-vless.sh" && chmod +x renew-vless
wget -O del-vless "https://raw.githubusercontent.com/zheevpn/a/main/xray/del-vless.sh" && chmod +x del-vless
wget -O cek-vless "https://raw.githubusercontent.com/zheevpn/a/main/xray/cek-vless.sh" && chmod +x cek-vless

# Trojan
wget -O add-tr "https://raw.githubusercontent.com/sikivpn/v1/main/xray/add-tr.sh" && chmod +x add-tr
wget -O trialtrojan "https://raw.githubusercontent.com/zheevpn/a/main/xray/trialtrojan.sh" && chmod +x trialtrojan
wget -O del-tr "https://raw.githubusercontent.com/zheevpn/a/main/xray/del-tr.sh" && chmod +x del-tr
wget -O renew-tr "https://raw.githubusercontent.com/zheevpn/a/main/xray/renew-tr.sh" && chmod +x renew-tr
wget -O cek-tr "https://raw.githubusercontent.com/zheevpn/a/main/xray/cek-tr.sh" && chmod +x cek-tr

# Trojan Go
wget -O addtrgo "https://raw.githubusercontent.com/zheevpn/a/main/xray/addtrgo.sh" && chmod +x addtrgo
wget -O trialtrojango "https://raw.githubusercontent.com/zheevpn/a/main/xray/trialtrojango.sh" && chmod +x trialtrojango
wget -O deltrgo "https://raw.githubusercontent.com/zheevpn/a/main/xray/deltrgo.sh" && chmod +x deltrgo
wget -O renewtrgo "https://raw.githubusercontent.com/zheevpn/a/main/xray/renewtrgo.sh" && chmod +x renewtrgo
wget -O cektrgo "https://raw.githubusercontent.com/zheevpn/a/main/xray/cektrgo.sh" && chmod +x cektrgo
clear
echo -e "Update Script Success..."
sleep 2
read -n 1 -s -r -p "Klik Enter untuk ke menu"
menu
