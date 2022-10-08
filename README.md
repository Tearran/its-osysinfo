# its-osysinfo
System info graph on an ssd1306 
- pip3
- luma.core
- python3-pil (apt not pip)
- zip
- its-i2cScan

## system requierments
```bash 
{
sudo apt update && sudo apt install git python3-pip python3-pil zip 
sudo pip3 install luma.core luma.lcd luma.oled psutil
wget https://raw.githubusercontent.com/Tearran/its-i2cScan/main/build.bash && bash build.bash
sleep 1 && clear
its-its-i2cScan 1
}
```
Build executible
```bash
{
git clone https://github.com/Tearran/its_osysinfo.git ~/.local/src/its_osysinfo/; cd ~/.local/src/its_osysinfo/ && bash install.sh
}
```
