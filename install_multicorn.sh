#!/bin/bash

apt-get update
apt-get -y install git make postgresql-server-dev-9.5 python-dev gcc python-pip
cd ~
git clone git://github.com/Kozea/Multicorn.git
cd ~/Multicorn
make && make install
git clone https://github.com/asya999/yam_fdw
cd ~/yam_fdw
python setup.py install
mkdir /home/postgres
chown postgres -R /home/postgres