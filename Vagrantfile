# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # All Vagrant configuration is done here

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "centos/7"

  config.ssh.forward_agent = true

  # Forward HTTP/S ports
  config.vm.network "forwarded_port", guest: 80, host: 80, auto_correct: true
  config.vm.network "forwarded_port", guest: 443, host: 443, auto_correct: true

  config.vm.provision :shell, :inline => "setenforce 0 && curl -L https://www.opscode.com/chef/install.sh | sudo bash"

  config.vm.provision :chef_solo do |chef|
    # Paths to your cookbooks (on the host)
    chef.cookbooks_path = ["chef-repo/cookbooks/"]
    # Add chef recipes
    chef.add_recipe 'yum'
    chef.add_recipe 'lampapp'
    chef.add_recipe 'logrotate'
  end

end
