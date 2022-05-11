#!/bin/bash

#とりあえずアップデート
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

sudo apt install wget -y

#時間
timedatectl set-local-rtc true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true

#git install
sudo apt install git -y

#chrome install
if [ ! -L /usr/bin/google-chrome-stable ]; then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt install -f
    rm google-chrome-stable_current_amd64.deb
fi

#slack install
if [ ! -L /usr/bin/slack ]; then
    wget https://downloads.slack-edge.com/releases/linux/4.22.0/prod/x64/slack-desktop-4.22.0-amd64.deb
    sudo dpkg -i slack-desktop-4.22.0-amd64.deb
    sudo apt install -f
    rm slack-desktop-4.22.0-amd64.deb
fi

#chrome gnome install
sudo apt install chrome-gnome-shell -y
sudo apt install gnome-tweaks -y
