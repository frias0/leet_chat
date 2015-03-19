#!/usr/bin/env bash

echo "UPDATING UBUNTU"
apt-get update
apt-get install -y python-software-properties python g++ make

echo "SETTNG UP NODEJS"
#apt-get install -y nodejs
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash
source ~/.bashrc
nvm install 0.12
nvm use 0.12
npm -g install sails

echo "INSTALLING GIT"
apt-get install -y git

echo "INSTALLING MYSQL"
export DEBIAN_FRONTEND=noninteractive
apt-get install -y -q mysql-server #pw blank

echo "SETTING UP PROJECT"
git clone https://github.com/frias0/leet_chat.git
cd leet_chat

echo "LOADING DB CONFIG"
mysql -u root < db.sql
cd backend

echo "INSTALLING DEPENDENCIES"
npm install
echo "SETUP DONE"
sails lift
