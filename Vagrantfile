# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/xenial64"
    master.vm.provision "shell", path: "script-master.sh"
    master.vm.hostname = "master"
    master.vm.network "forwarded_port", guest: 80, host: 9121, id: 'http'
    master.vm.network "forwarded_port", guest: 22, host: 2222, id: 'ssh'
    master.vm.network "private_network", ip: "192.168.2.11"
    master.vm.provider "virtualbox" do |vb1|
      vb1.gui = false
      vb1.name = "master"
      vb1.memory = 1024
      vb1.cpus = 1
    end
  end

  config.vm.define "server1" do |server1|
    server1.vm.box = "ubuntu/xenial64"
    server1.vm.provision "shell", path: "script-server.sh"
    server1.vm.hostname = "server"
    server1.vm.network "forwarded_port", guest: 80, host: 9122, id: 'http'
    server1.vm.network "forwarded_port", guest: 22, host: 2223, id: 'ssh'
    server1.vm.network "private_network", ip: "192.168.2.12"
    server1.vm.provider "virtualbox" do |vb2|
      vb2.gui = false
      vb2.name = "server1"
      vb2.memory = 1024
      vb2.cpus = 1
    end
  end
  
  config.vm.define "server2" do |server2|
    server2.vm.box = "ubuntu/xenial64"
    server2.vm.provision "shell", path: "script-server.sh"
    server2.vm.hostname = "db"
    server2.vm.network "forwarded_port", guest: 80, host: 9123, id: 'http'
    server2.vm.network "forwarded_port", guest: 22, host: 2224, id: 'ssh'
    server2.vm.network "private_network", ip: "192.168.2.13"
    server2.vm.provider "virtualbox" do |vb3|
      vb3.gui = false
      vb3.name = "db"
      vb3.memory = 1024
      vb3.cpus = 1
    end
  end
end
