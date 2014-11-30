#!/bin/bash

sudo bash -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo bash -c 'echo "deb [arch=amd64] http://linux.dropbox.com/ubuntu bionic main" > /etc/apt/sources.list.d/dropbox.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

sudo bash -c 'echo "deb http://repository.spotify.com stable non-free" > /etc/apt/sources.list.d/spotify.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install git vim python-matplotlib libreoffice
sudo apt-get install google-chrome-stable python3-gpg dropbox spotify-client
sudo apt-get remove firefox

sudo fwupdmgr update

git config --global user.name "Alexander Hayman"
git config --global user.email "misterhayman@gmail.com"
git config --global core.editor vim
git config --global credential.helper cache

sudo usermod -a -G dialout akh
