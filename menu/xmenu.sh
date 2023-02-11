#!/bin/bash
clear
echo -e "\e[36m╒════════════════════════════════════════════╕\033[0m"
echo -e " \E[0;41;36m                 INFO SERVER                \E[0m"
echo -e "\e[36m╘════════════════════════════════════════════╛\033[0m"
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
IPVPS=$(curl -s ipinfo.io/ip )
ISPVPS=$( curl -s ipinfo.io/org )
#clear
if [ "$cekup" = "day" ]; then
echo -e "System Uptime   :  $uphours $upminutes $uptimecek"
else
echo -e "System Uptime   :  $uphours $upminutes"
fi
echo -e "IP-VPS          :  $IPVPS"
echo -e "ISP-VPS         :  $ISPVPS"
echo "╔═════════════════════════════════════════════════════════════════╗"
echo "║                     ┃ Script By SL ┃                                       ║" 
echo "╚═════════════════════════════════════════════════════════════════╝"
echo "╔═════════════════════════════════════════════════════════════════╗"
echo "║ ┃ Link Script ┃  ┃ https://t.me/hater786 ┃          ║" 
echo "╚═════════════════════════════════════════════════════════════════╝"
echo "╔═════════════════════════════════════════════════════════════════╗"
echo "║                     ┃ XRAY XMENU ┃                                         ║" 
echo "╚═════════════════════════════════════════════════════════════════╝"  
echo "║ 1. Create All XRAY Accounts ┃ Create Account ║"
echo "║ 2. Delete XRAY Account ┃ Delete Account ║"
echo "║ 3. Domain Name Check ┃ Domain Name Checker ║"
echo "║ 4. Check Public IP ┃ Check Public IP ║"
echo "║ 5. Update DLL ┃ Update ETC ║"
echo "║ 6. XRAY UPDATE Core ┃ Update Core ║"
echo "║ 7. XRAY UPDATE SCRIPT ┃ Update Script ║"
echo "║ 8. Restart Xray ┃ Restart Service XRAY ║"
echo "║ 9. Update Certificate ┃ Update Certificate ║"
echo "║ 10.Add Domain ┃ ADD DOMAIN ║"
echo "║ 11.CARA POINTING DOMAIN ┃ ║"
echo "║ 12.Test Server Speed ┃ Speedtest Server ║"
echo "║ 13.Restart VPS ┃ Reboot ║"
echo "║ 14.Exit Menu ┃ Exit Menu ║"
echo "║ 15.Script Info ┃ ║"
echo "║ 16.Auto Pointing Subdomain┃ ║"
echo "║ 17. Check All Port Services ┃ Check All Port Service            ║"
echo "╚═════════════════════════════════════════════════════════════════╝" 
read -p "     Select From Options [1-69 or x] :  " xmenu
case $xmenu in 
1)
add-akun
;;
2)
delete-akun
;;
3)
cat /etc/xray/domain
;;
4)
curl -s ipinfo.io/ip
;;
5)
updatedll
;;
6)
updatecore
;;
7)
updatesc
;;
8)
restart-xray
;;
9)
certv2ray
;;
10)
add-domain
;;
11)
how-pointing
;;
12)
speedtest
;;
13)
reboot
;;
14)
exit
;;
15)
cat /root/log-install.txt
;;
16)
auto-pointing
;;
17)
cek-port
;;
*)
echo "Input The Correct Number !"
;;
esac
