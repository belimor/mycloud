#!/bin/bash

apt-get update
apt-get upgrade -y

pip install --user virtualenv
virtualenv ~/cli-ve
virtualenv -p /usr/bin/python3.4 ~/cli-ve
source ~/cli-ve/bin/activate
pip install --upgrade awscli
aws --version
sudo apt-get -y install python-pip
pip install --upgrade pip
