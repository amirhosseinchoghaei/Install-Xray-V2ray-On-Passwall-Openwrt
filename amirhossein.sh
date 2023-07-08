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

sed -i 's/usr\/bin\/xray/tmp\/usr\/bin\/xray/g' /etc/config/passwall

/etc/init.d/amir start


echo -e "${GREEN} Made With Love By : AmirHossein Choghaei ${ENDCOLOR}"

sleep 5

rm amirhossein.sh
