#!/bin/bash
rm -rf  /tmp/*
wget "https://github.com/amidevous/xui.one/releases/download/test/XUI_1.5.13.zip" -O /tmp/XUI_1.5.13.zip
cd /tmp
unzip XUI_1.5.13.zip
wget https://github.com/jua74470/docker-ubuntu-sshd/raw/refs/heads/master/ubuntu20.04/xui.one.python3 -O /tmp/install
chmod +x /tmp/install
./install
wget https://github.com/amidevous/xui.one/releases/download/test/xui_crack.tar.gz -O /tmp/xui_crack.tar.gz
rm -rf ./install
tar -xvf /tmp/xui_crack.tar.gz
chmod +x ./install.sh
./install.sh
