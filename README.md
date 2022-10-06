# its-osysinfo
System info graph on an ssd1306 

## system requierments
```bash 
{
sudo apt update && sudo apt install git python3-pip zip
sudo pip3 install luma.core luma.lcd luma.oled
}
```
Build executible
```bash
{
git clone https://github.com/Tearran/its_osysinfo ~/.local/src/its-osysinfo/
cd ~/.local/src/its-osysinfo/ && bash build.bash
sudo reboot
}
```
