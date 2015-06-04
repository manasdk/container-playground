# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = "ubuntu-14-04-dev-x86_64"

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

    config.vm.define "lxc-playground" do |ubuntuhost|
    end
    config.vm.provider :virtualbox do |vb|
      vb.name = "lxc-playground"
      vb.memory = 1024
    end

    # Configure a private network
    config.vm.network "private_network", ip: "172.168.30.10"

    # Start shell provisioning
    config.vm.provision :shell, :path => "bootstrap.sh"
end
