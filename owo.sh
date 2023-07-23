#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color


sleep 3

service passwall stop

if [[ -f panel.ipk ]]

then 

  rm panel.ipk

else 

  echo "Stage 2 Passed" 

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

echo "INSTALLING XRAY ..."
opkg install panel.ipk -d ram


if [[ -f panel.ipk ]]

then 

  rm panel.ipk

else 

  echo "Stage 1 Passed" 

fi

service passwall restart
cd /root/

echo "Done !"
