
guest_port = 80
host_port = 8888
vm_name = "boltcm-vagrant"
db_root_password = "root"

Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-8.7"

  config.vm.network :forwarded_port, guest: guest_port, host: host_port, auto_correct: true

  config.vm.synced_folder "./", "/var/www", create: true, group: "www-data", owner: "vagrant", mount_options: ['dmode=777', 'fmode=666']

  config.vm.provider "virtualbox" do |v|
    v.name = vm_name
  end

  config.vm.provision "shell", path: "provision/setup.sh"
  config.vm.provision "shell", path: "provision/mariadb.sh", args: [db_root_password]
end
