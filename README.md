# its-osysinfo
System info graph on an ssd1306 

# Requierments
- pip3
- luma.core 
- luma.oled
- libopenjp2-7
- python3-pil (apt not pip)
- zip
- git

## Console Autologin
```bash
sudo raspi-config nonint do_boot_behaviour B2 ; sudo reboot
```
Used to see output on HDMI SSH`{ clear ;} > /dev/tty1` 


## apt requierments
```bash 
{ sudo apt update ; sudo apt install -y git zip python3-pip python3-pil libopenjp2-7 ; } >/dev/tty1
```
## pip3 requierments
```bash
{ sudo pip3 install luma.core luma.lcd luma.oled psutil ; } >/dev/tty1
```

## [its-i2cScan](https://github.com/Tearran/its-i2cScan/blob/main/__main__.py) optional - (Rasperry Pi OS) tested on (legacy)
```bash
{ wget https://raw.githubusercontent.com/Tearran/its-i2cScan/main/build.bash && bash build.bash ; sleep 1 ; clear ; /usr/bin/its-i2cScan 1 ;} >/dev/tty1
```

Build and install
```bash
{ git clone https://github.com/Tearran/its_osysinfo.git ~/.local/src/its_osysinfo/; cd ~/.local/src/its_osysinfo/ ; bash ./install.sh ;} > /dev/tty1
```
