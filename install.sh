#!/bin/bash

#TODO: Error Checking (For failure of these commands!)

#mongodb setup
#these commands are found on https://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
#update apt-get, to get the latest version of our packages
sudo apt-get update
sudo apt-get install -y mongodb-org
#pin a specific version of mongodb to prevent accidental upgrades!
echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections

#install necessary packages as preparation for mean
sudo apt-get install -y git
sudo apt-get install -y build-essential
sudo apt-get install -y openssl
sudo apt-get install -y libssl-dev
sudo apt-get install -y pkg-config
sudo apt-get install -y ruby
sudo apt-get install -y ruby-compass

#get node
wget https://nodejs.org/dist/v4.2.6/node-v4.2.6.tar.gz
tar xzvf node-v*
cd node-v*
./configure
make
sudo make install
cd ..
rm -rf node-v*

#node installed, install packages
sudo gem install sass
sudo npm install -g bower grunt-cli
sudo npm install gulp -g

#download the MEAN boilerplate.
git clone https://github.com/meanjs/mean.git meanjs
cd meanjs


#install packages
sudo bower --allow-root --config.interactive=false install

#install package references
sudo npm install

sudo service mongod start