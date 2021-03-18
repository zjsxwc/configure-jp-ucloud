#!/bin/bash

apt install -y git
apt install -y python-pip
pip install git+https://github.com/shadowsocks/shadowsocks.git@master

ssserver -p 3389 -k mypasswd -m aes-256-ctr --workers 10 --pid-file /tmp/ssserverx.pid --log-file /tmp/ss2.log --user nobody -v -d start
