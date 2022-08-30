#!/bin/bash
#add fix to exercise5-server1 here

sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g' /etc/ssh/ssh_config
# 
ssh-keygen -t rsa -b 4096 -N ""  -C "server1 ssh key" -f  /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa 
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub
#
cp /home/vagrant/.ssh/id_rsa ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
cp /home/vagrant/.ssh/id_rsa.pub ~/.ssh/id_rsa.pub
chmod 644 ~/.ssh/id_rsa.pub
#
cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
# sheared mount
cp /home/vagrant/.ssh/id_rsa.pub /vagrant/