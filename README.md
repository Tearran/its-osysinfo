# its-osysinfo
System info graph on an ssd1306 
- pip3
- luma.core
- python3-pil (apt not pip)
- zip
- its-i2cScan

## Console Autologin
To record HDMI 
`{bash clear} > /dev/tty1`

to tty1 from ssh


```bash
sudo raspi-config nonint do_boot_behaviour B2
```
## system requierments
```bash 
{
sudo apt update
sudo apt install git zip python3-pip python3-pil libopenjp2-7 
sudo pip3 install luma.core luma.lcd luma.oled psutil 
wget https://raw.githubusercontent.com/Tearran/its-i2cScan/main/build.bash && bash build.bash
sleep 1 
/usr/bin/its-i2cScan 1 
} > /dev/tty
```

Build and install
```bash
git clone https://github.com/Tearran/its_osysinfo.git ~/.local/src/its_osysinfo/; cd ~/.local/src/its_osysinfo/ ; bash ./install.sh
```
