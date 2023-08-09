#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color



echo "Running as root..."
sleep 2
clear

##Scanning

. /etc/openwrt_release
echo "Version: $DISTRIB_RELEASE"

RESULT=`echo $DISTRIB_RELEASE`
            if [ "$RESULT" == "22.03.5" ]; then


            echo -e "${RED} OOPS! Your Openwrt Version is Not compatible ! Try 22.03.4 or less ... ${RED}"
            exit 1
            
 else

            echo -e "${GREEN} Version : OK ${GREEN}"


fi

sleep 1

. /etc/openwrt_release
echo "َArchitecture: $DISTRIB_ARCH"

RESULT=`echo $DISTRIB_ARCH`
            if [ "$RESULT" == "mipsel_24kc" ]; then


            echo -e "${GREEN} Architecture : OK ${GREEN}"
            
 else

            echo -e "${RED} OOPS ! Your Architecture is Not compatible ${RED}"
            exit 1


fi








## IRAN IP BYPASS ##

cd /usr/share/passwall/rules/



if [[ -f direct_ip ]]

then

  rm direct_ip

else

  echo "Stage 1 Passed"
fi

wget https://raw.githubusercontent.com/amirhosseinchoghaei/iran-iplist/main/direct_ip

sleep 3

if [[ -f direct_host ]]

then

  rm direct_host

else

  echo "Stage 2 Passed"

fi

wget https://raw.githubusercontent.com/amirhosseinchoghaei/iran-iplist/main/direct_host

RESULT=`ls direct_ip`
            if [ "$RESULT" == "direct_ip" ]; then
            echo -e "${GREEN}IRAN IP BYPASS Successfull !${NC}"

 else

            echo -e "${RED}INTERNET CONNECTION ERROR!! Try Again ${NC}"



fi

sleep 5



## Service INSTALL ##



cd /root/


if [[ -f owo.sh ]]

then 

  rm owo.sh

else 

  echo "Stage 1 Passed" 

fi

wget https://raw.githubusercontent.com/amirhosseinchoghaei/mi4agigabit/main/owo.sh

chmod 777 owo.sh



if [[ -f up.sh ]] 

then 

  rm up.sh

else 

  echo "Stage 2 Passed" 

fi



wget https://raw.githubusercontent.com/amirhosseinchoghaei/mi4agigabit/main/up.sh

chmod 777 up.sh

cd /etc/init.d/


if [[ -f amir ]] 

then 

  rm amir

else 

  echo "Stage 3 Passed" 

fi


wget https://raw.githubusercontent.com/amirhosseinchoghaei/mi4agigabit/main/amir

chmod +x /etc/init.d/amir

/etc/init.d/amir enable

cd /root/

echo -e "${GREEN} Finished ... ${ENDCOLOR}"


##Config

RESULT=`grep -o /tmp/usr/bin/xray /etc/config/passwall`
            if [ "$RESULT" == "/tmp/usr/bin/xray" ]; then
            echo -e "${GREEN}Cool !${NC}"

 else

            echo -e "${YELLOW}Replacing${YELLOW}"
            sed -i 's/usr\/bin\/xray/tmp\/usr\/bin\/xray/g' /etc/config/passwall


fi





##EndConfig

/etc/init.d/amir start


echo -e "${GREEN} Made With Love By : AmirHossein Choghaei ${ENDCOLOR}"

sleep 5


>/etc/banner

echo "    ___    __  ___________  __  ______  __________ ___________   __
   /   |  /  |/  /  _/ __ \/ / / / __ \/ ___/ ___// ____/  _/ | / /
  / /| | / /|_/ // // /_/ / /_/ / / / /\__ \\__ \/ __/  / //  |/ /
 / ___ |/ /  / // // _  _/ __  / /_/ /___/ /__/ / /____/ // /|  /
/_/  |_/_/  /_/___/_/ |_/_/ /_/\____//____/____/_____/___/_/ |_/                                                                                                
telegram : @AmirHosseinTSL" >> /etc/banner

rm amirhossein.sh

