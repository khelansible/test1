#!/usr/bin/env bash

apt-get update
sudo apt-get install sshpass
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible
cp -ar /vagrant/* /home/vagrant

chown -R vagrant:vagrant /home/vagrant

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL

# vagrant environment nodes
192.168.33.100  vagrant
EOL
