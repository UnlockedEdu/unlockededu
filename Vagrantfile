$script = <<-SCRIPT
	dnf install -y vim git dnf-plugins-core make
	dnf config-manager --add-repo \
	https://download.docker.com/linux/fedora/docker-ce.repo
	dnf install -y docker-ce
	usermod -aG docker vagrant
	systemctl enable docker && systemctl start docker
SCRIPT

Vagrant.configure("2") do |config|
	config.vm.box = "fedora/28-cloud-base"
	config.vm.box_version = "20180425"
	config.vm.network "forwarded_port", guest: 8000, host: 8000, auto_correct: true
	config.vm.provider "virtualbox" do |vb|
		# Display the VirtualBox GUI when booting the machine
		vb.gui = true
		# Customize the amount of memory on the VM:
		vb.memory = "1024"
	end
	config.vm.provision "shell", inline: $script
end
