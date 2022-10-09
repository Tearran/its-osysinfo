#!/bin/bash


#File location and name
#SRC="${BASH_SOURCE[0]}"
src="$(dirname ${BASH_SOURCE[0]})"
buildName="${PWD##*/}"
execName="${PWD##*/}.bin"
installedName=$( echo ${buildName} | sed 's|_|-|g' )

cd $src || ( echo "faild build" && exit )



## compress the contents to a zip
sudo apt update
sudo apt install git zip python3-pip python3-pil libopenjp2-7
sudo pip3 install luma.core luma.lcd luma.oled psutil
wget https://raw.githubusercontent.com/Tearran/its-i2cScan/main/build.bash && bash build.bash
sleep 1 && clear
its-its-i2cScan 1

git clone https://github.com/Tearran/its_osysinfo.git ~/.local/src/its_osysinfo/; cd ~/.local/src/its_osysinfo/


[ -e /usr/bin/zip ] && zip -r ../$execName.zip ./* 

cd ..

## set the interprater
echo '#!/usr/bin/env python3' | cat - $execName.zip > $installedName

## install the exicutible
sudo install -b -v $installedName /usr/bin/

cd "$HOME/.local/src/its_osysinfo/"

sudo cp $HOME/.local/src/its_osysinfo/its-osysinfo.service /etc/systemd/system/its-osysinfo.service
sudo systemctl enable its-osysinfo
sudo systemctl start its-osysinfo
