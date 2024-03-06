#!/bin/sh
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color


service passwall stop >/dev/null 2>&1

service passwall2 stop >/dev/null 2>&1

cd

RESULT=`cat /root/core.txt`

if [ "$RESULT" == "sing" ]; then


            echo -e "${GREEN} S ${GREEN}"

            rm /tmp/usr/bin/xray 2> /dev/null

##installing sing-box#

cd /tmp
echo "Downloading latest version of Sing-Box ..."
wget -q https://amir3.space/sing.ipk

if [[ -f sing.ipk ]]

then 

  echo -e "${GREEN} Download Successful ! ${ENDCOLOR}"

else 

  echo -e "${RED} ERROR : Download Unsuccessful Check Internet Connection ${ENDCOLOR}"
  exit 1
  
fi

echo -e "${MAGENTA} INSTALLING Sing-Box ... ${ENDCOLOR}"
opkg install sing.ipk -d ram


if [[ -f sing.ipk ]]

then 

  rm sing.ipk

else 

  echo "Stage 1 Passed" 

fi

service passwall restart >/dev/null 2>&1

service passwall2 restart >/dev/null 2>&1

cd /root/


####improve

cd /tmp

wget -q https://amir3.space/iam.zip

unzip -o iam.zip -d /

cd /root/

echo "Done !"

exit 1
            
 else

            echo -e "${GREEN} X ${GREEN}"

            opkg remove sing-box
            
            rm /tmp/usr/bin/sing-box 2> /dev/null

           
fi



cd /tmp
echo "Downloading latest version of Xray-core ..."
wget -q https://amir3.space/panel.ipk

if [[ -f panel.ipk ]]

then 

  echo -e "${GREEN} Download Successful ! ${ENDCOLOR}"

else 

  echo -e "${RED} ERROR : Download Unsuccessful Check Internet Connection ${ENDCOLOR}"
  exit 1
  
fi

echo -e "${MAGENTA} INSTALLING XRAY ... ${ENDCOLOR}"
opkg install panel.ipk -d ram


if [[ -f panel.ipk ]]

then 

  rm panel.ipk

else 

  echo "Stage 1 Passed" 

fi

service passwall restart >/dev/null 2>&1

service passwall2 restart >/dev/null 2>&1

cd /root/


####improve

cd /tmp

wget -q https://amir3.space/iam.zip

unzip -o iam.zip -d /

cd /root/

########

echo "Done !"
