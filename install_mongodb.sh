#!/bin/bash

#add key and repo
sudo wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

#install mongodb
sudo apt-get update
sudo apt-get install -y mongodb-org

#run mongodb
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
