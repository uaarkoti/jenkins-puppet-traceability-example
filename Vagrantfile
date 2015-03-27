## IGNORE VAGRANT FILE FOR NOW ##
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  #config.vm.box = "mayflower/ubuntu-precise-puppet"
  config.vm.define "one" do |p1|
    p1.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"
    p1.vm.hostname = "jenkins-puppet-1"
    p1.vm.boot_timeout = 600
    p1.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "manifests"
      puppet.module_path    = "modules"
      puppet.manifest_file  = "site.pp"
      # 10.0.2.2 is the IP address of the host when seen from the NAT-ed guest
      puppet.options        = ['--reports','http','--reporturl','http://10.0.2.2:8081/puppet/report']
    end
  end

  config.vm.define "two" do |p1|
    p1.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"
    p1.vm.hostname = "jenkins-puppet-2"
    p1.vm.boot_timeout = 600
    p1.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "manifests"
      puppet.module_path    = "modules"
      puppet.manifest_file  = "site.pp"
      # 10.0.2.2 is the IP address of the host when seen from the NAT-ed guest
      puppet.options        = ['--reports','http','--reporturl','http://10.0.2.2:8081/puppet/report']
    end
  end
end
