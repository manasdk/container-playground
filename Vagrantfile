# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"

    config.vm.define "container-playground" do |ubuntuhost|
    end
    config.vm.provider :virtualbox do |vb|
      vb.name = "cntr-plgd"
      vb.memory = 2048
      vb.cpus = 2
    end

    # Configure a private network
    config.vm.network "private_network", ip: "172.168.35.12"

    # Start shell provisioning
    config.vm.provision :shell, :path => "bootstrap.sh"
end
