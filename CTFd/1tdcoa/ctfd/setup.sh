#! /bin/sh

#Set Working Directory
DIR_WORK="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Bind a Work Directory
echo Working Directory: ${DIR_WORK}/CTFd

#Removing old CTFd 
sudo rm -rf ${DIR_WORK}/CTFd

#Download CTFd
sudo git clone --single-branch https://github.com/CTFd/CTFd.git CTFd

#Download Themes
sudo git clone https://github.com/0xdevsachin/CTFD-crimson-theme.git CTFd/CTFd/themes/crimson
sudo git clone https://github.com/hmrserver/CTFd-theme-pixo.git CTFd/CTFd/themes/pixo
sudo git clone https://github.com/0xdevsachin/CTFD-odin-theme.git CTFd/CTFd/themes/odin
sudo git clone https://github.com/iver-ics/CTFd-xmas-theme.git CTFd/CTFd/themes/xmas
sudo git clone https://github.com/chainflag/ctfd-neon-theme.git CTFd/CTFd/themes/neon
sudo git clone https://github.com/AaronVigal/nullify-ctfd-theme.git && sudo mv ./nullify-ctfd-theme/nullify/ CTFd/CTFd/themes/ && sudo rm -rf nullify-ctfd-theme/
