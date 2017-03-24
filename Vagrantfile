# -*- mode: ruby -*-
# vi: set ft=ruby :

# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/trusty64"
    app.vm.hostname = "puppetmaster.mylab.local"
    app.vm.network "private_network", ip: "172.28.128.20"
   end

  config.vm.define "web" do |web|
    web.vm.box="nrel/CentOS-6.5-x86_64"
    web.vm.hostname = "workstation.mylab.lcoal"
	web.vm.network "private_network", ip: "172.28.128.21"
    web.vm.network "forwarded_port", guest: 80, host: 8086
	end

  config.vm.define "db" do |db|
    db.vm.box = "nrel/CentOS-6.5-x86_64"
	db.vm.provision "shell", path: "~/projects/scripts/centos-lamp.sh"
    db.vm.hostname = "node2.mylab.local"
    db.vm.network "private_network", ip: "172.28.128.22"

  end
  
  
 
end
