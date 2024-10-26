#!/bin/bash
rm -rf  /tmp/*
wget "https://github.com/amidevous/xui.one/releases/download/test/XUI_1.5.13.zip" -O /tmp/XUI_1.5.13.zip
cd /tmp
unzip XUI_1.5.13.zip
./install
wget https://github.com/amidevous/xui.one/releases/download/test/xui_crack.tar.gz -O /tmp/xui_crack.tar.gz
rm -rf ./install
tar -xvf /tmp/xui_crack.tar.gz
chmod +x ./install.sh
./install.sh
