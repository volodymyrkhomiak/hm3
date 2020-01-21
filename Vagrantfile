Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |v|

    file_to_disk1 = "disk1.vdi"
    unless File.exist?(file_to_disk1)
      v.customize ['createhd', '--filename', file_to_disk1, '--size', "401"]
    end
    v.customize ['storageattach', :id, '--storagectl', 'SCSI', '--port', 3, '--type', 'hdd', '--medium', file_to_disk1]

    file_to_disk2 = "disk2.vdi"
    unless File.exist?(file_to_disk1)
      v.customize ['createhd', '--filename', file_to_disk2, '--size', "402"]
    end
    v.customize ['storageattach', :id, '--storagectl', 'SCSI', '--port', 4, '--type', 'hdd', '--medium', file_to_disk2]

    file_to_disk3 = "disk3.vdi"
    unless File.exist?(file_to_disk1)
      v.customize ['createhd', '--filename', file_to_disk3, '--size', "403"]
    end
    v.customize ['storageattach', :id, '--storagectl', 'SCSI', '--port', 5, '--type', 'hdd', '--medium', file_to_disk3]

    file_to_disk4 = "disk4.vdi"
    unless File.exist?(file_to_disk1)
      v.customize ['createhd', '--filename', file_to_disk4, '--size', "404"]
    end
    v.customize ['storageattach', :id, '--storagectl', 'SCSI', '--port', 6, '--type', 'hdd', '--medium', file_to_disk4]

  end
 config.vm.provision "shell", path: "provisioner.sh"
end