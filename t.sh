#!/bin/bash

apt install git
apt-get install python-pip
pip install git+https://github.com/shadowsocks/shadowsocks.git@master

ssserver -p 3389 -k mypasswd -m rc4-md5 --workers 10 --pid-file /tmp/ss2.pid --log-file /tmp/ss2.log --user nobody -v -d start
