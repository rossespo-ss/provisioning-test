# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant.require_version ">= 1.7.4"

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define "web", primary: true do |web|
    web.vm.box = "ubuntu/trusty64"
    web.vm.network "forwarded_port", guest: 8080, host: 4765
    web.vm.network "private_network", ip: "192.168.33.10"
    
    web.vm.provider "virtualbox" do |vb|
      # Display the VirtualBox GUI when booting the machine
      vb.gui = false
    
      # Customize the amount of memory on the VM:
      vb.memory = "2048"
    end

    web.vm.synced_folder "data", "/vagrant_data"

    web.vm.provision "chef_zero" do |chef|
      chef.encrypted_data_bag_secret_key_path = '.secret'
      chef.data_bags_path = 'data_bags'
      chef.add_recipe "teamcity::server"

      chef.json = {
        "java" => {
          "jdk_version" => 7,
          "oracle" => {
            "accept_oracle_download_terms" => true
          }
        },
        "tomcat" => {
          "base_version" => 7
        }
      }
    end

    # Enable provisioning with a shell script. Additional provisioners such as
    # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
    # documentation for more information about their specific syntax and use.
    # config.vm.provision "shell", inline: <<-SHELL
    #   sudo apt-get update
    #   sudo apt-get install -y apache2
    # SHELL
  end

  # config.vm.define "db", primary: true do |db|
  #   db.vm.box = "ubuntu/trusty64"
  #   db.vm.network "private_network", ip: "192.168.33.20"
    
  #   db.vm.provider "virtualbox" do |vb|
  #     # Display the VirtualBox GUI when booting the machine
  #     vb.gui = false
    
  #     # Customize the amount of memory on the VM:
  #     vb.memory = "2048"
  #   end

  #   db.vm.synced_folder "data", "/vagrant_data"

  #   # Enable provisioning with a shell script. Additional provisioners such as
  #   # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  #   # documentation for more information about their specific syntax and use.
  #   # config.vm.provision "shell", inline: <<-SHELL
  #   #   sudo apt-get update
  #   #   sudo apt-get install -y apache2
  #   # SHELL
  # end
end
