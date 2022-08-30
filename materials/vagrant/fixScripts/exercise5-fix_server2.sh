#!/bin/bash
#add fix to exercise5-server2 here
sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g' /etc/ssh/ssh_config

cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys 

cp /vagrant/id_rsa.pub /home/vagrant/.ssh/id_rsa.pub
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub
chmod 644 /home/vagrant/.ssh/id_rsa.pub

cp /vagrant/id_rsa.pub ~/.ssh/id_rsa.pub
chmod 644 ~/.ssh/id_rsa.pub