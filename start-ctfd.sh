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

# Bind a Work Directory
echo Working Directory: ${SCRIPT_WORK}

# Build Stacks
echo ''
echo '------> Building 1TDCOA Stack'
echo ''

cd ${SCRIPT_WORK}/CTFd/1tdcoa/ctfd/
sudo chmod +x setup.sh
sudo /bin/bash setup.sh

echo ''
echo '------> Building 1TDCOR Stack'
echo ''

cd ${SCRIPT_WORK}/CTFd/1tdcor/ctfd/
sudo chmod +x setup.sh
sudo /bin/bash setup.sh

echo ''
echo '------> Building 2TDCOA Stack'
echo ''

cd ${SCRIPT_WORK}/CTFd/2tdcoa/ctfd/
sudo chmod +x setup.sh
sudo /bin/bash setup.sh

echo ''
echo '------> Building 2TDCOR Stack'
echo ''

cd ${SCRIPT_WORK}/CTFd/2tdcor/ctfd/
sudo chmod +x setup.sh
sudo /bin/bash setup.sh


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
