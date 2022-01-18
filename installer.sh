#!/bin/bash 
apt update && apt upgrade -y 
sudo dpkg --add-architecture i386
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo apt update
sudo apt install --install-recommends winehq-stable
wine --version
sudo apt update -y 
sudo apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils -y 
sudo apt install xrdp -y 
sudo systemctl status xrdp
