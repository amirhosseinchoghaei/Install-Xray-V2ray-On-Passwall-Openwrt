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

cd

echo "IRAN IP BYPASS Successfull !"

sleep 5
