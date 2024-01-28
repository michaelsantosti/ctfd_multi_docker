#! /bin/sh
clear
cat <<EOF

                _________              __                  __  .__
               /   _____/____    _____/  |_  ____  _______/  |_|__|
               \_____  \__   \  /    \   __\/  _ \/  ___/\   __\  |
               /        \/ __ \|   |  \  | (  <_> )___ \  |  | |  |
              /_______  (____  /___|  /__|  \____/____  > |__| |__|
 =====================\/=====\/=====\/================\/=======================
                            Multi CTFd Docker Deploy Setup
 ==============================================================================
   Date............ 05/01/2024              Version....... V1.0
   By.............. Michael Santosti        Target........ CTFd
 ==============================================================================
EOF

#Set Working Directory
SCRIPT_WORK="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

#Bind a Work Directory
echo Working Directory: ${SCRIPT_WORK}
cd /tmp

#Removing old CTFd
sudo rm -rf CTFd

#Download CTFd
sudo git clone --single-branch https://github.com/CTFd/CTFd.git CTFd

#Download Themes
sudo git clone https://github.com/0xdevsachin/CTFD-crimson-theme.git CTFd/CTFd/themes/crimson
sudo git clone https://github.com/hmrserver/CTFd-theme-pixo.git CTFd/CTFd/themes/pixo
sudo git clone https://github.com/0xdevsachin/CTFD-odin-theme.git CTFd/CTFd/themes/odin
sudo git clone https://github.com/iver-ics/CTFd-xmas-theme.git CTFd/CTFd/themes/xmas
sudo git clone https://github.com/chainflag/ctfd-neon-theme.git CTFd/CTFd/themes/neon
sudo git clone https://github.com/AaronVigal/nullify-ctfd-theme.git && sudo mv ./nullify-ctfd-theme/nullify/ CTFd/CTFd/themes/ && sudo rm -rf nullify-ctfd-theme/

#Install curl on build (enable healthcheck)
sed -i '34i\        curl \ \' CTFd/Dockerfile

#Build Stacks
echo ''
echo '------> Building 1TDCOA Stack'
echo ''

sudo rm -r ${SCRIPT_WORK}/CTFd/1tdcoa/ctfd/CTFd
sudo cp -r CTFd ${SCRIPT_WORK}/CTFd/1tdcoa/ctfd/

echo ''
echo '------> Building 1TDCOR Stack'
echo ''

sudo rm -r ${SCRIPT_WORK}/CTFd/1tdcor/ctfd/CTFd
sudo cp -r CTFd ${SCRIPT_WORK}/CTFd/1tdcor/ctfd/

echo ''
echo '------> Building 2TDCOA Stack'
echo ''

sudo rm -r ${SCRIPT_WORK}/CTFd/2tdcoa/ctfd/CTFd
sudo cp -r CTFd ${SCRIPT_WORK}/CTFd/2tdcoa/ctfd/

echo ''
echo '------> Building 2TDCOR Stack'
echo ''

sudo rm -r ${SCRIPT_WORK}/CTFd/2tdcor/ctfd/CTFd
sudo cp -r CTFd ${SCRIPT_WORK}/CTFd/2tdcor/ctfd/

#Deleting Temp Files

sudo rm -r CTFd

#Initializing Stacks
echo ''
echo '------> Starting Monitor Stack'
echo ''

cd ${SCRIPT_WORK}/monitor
sudo docker compose build
sudo docker compose up -d

echo ''
echo '------> Starting database Stack'
echo ''

cd ${SCRIPT_WORK}/database
sudo docker compose build
sudo docker compose up -d

echo ''
echo '------> Starting 1TDCOA Stack'
echo ''

cd ${SCRIPT_WORK}/CTFd/1tdcoa
sudo docker compose build
sudo docker compose up -d

echo ''
echo '------> Starting 1TDCOR Stack'
echo ''

cd ${SCRIPT_WORK}/CTFd/1tdcor
sudo docker compose build
sudo docker compose up -d

echo ''
echo '------> Starting 2TDCOA Stack'
echo ''

cd ${SCRIPT_WORK}/CTFd/2tdcoa
sudo docker compose build
sudo docker compose up -d

echo ''
echo '------> Starting 2TDCOR Stack'
echo ''

cd ${SCRIPT_WORK}/CTFd/2tdcor
sudo docker compose build
sudo docker compose up -d

echo ''
echo '------> Done, n-joy :)'
echo ''
