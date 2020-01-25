#! /bin/sh

sudo apt update
sudo apt -y install tree make hexer htop jq
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common

# Install docker-ce engine
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt -y install docker-ce
#sudo systemctl status docker

sudo usermod -a -G docker $USER
sudo service docker restart

# Install docker-compsoe
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

sudo apt -y autoremove && sudo apt -y autoclean

