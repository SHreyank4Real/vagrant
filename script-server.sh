#!/bin/bash

sudo apt-get update

sudo cp /vagrant/id_rsa.pub /home/vagrant/
sudo cat /home/vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys