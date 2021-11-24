Vagrant.configure("2") do |config|
    config.vm.define :alpha do |alpha|
      alpha.vm.box = "ubuntu/focal64"
      alpha.vm.network :private_network, ip: "172.72.72.10"
      alpha.vm.hostname = "alpha"
      alpha.vm.provision :file,  source: "./nginx", destination: "/tmp/nginx"
      alpha.vm.provision :shell, inline: <<-SHELL
        chmod +x /tmp/nginx/install-nginx.sh
        cd /tmp/nginx/ && ./install-nginx.sh
      SHELL
    end
  
    config.vm.define :beta do |beta|
      beta.vm.box = "ubuntu/focal64"
      beta.vm.network :private_network, ip: "172.72.72.20"
      beta.vm.hostname = "beta"
      beta.vm.provision "shell", inline: "sudo apt install nginx -y"
    end
    
    config.vm.define :gama do |gama|
      gama.vm.box = "ubuntu/focal64"
      gama.vm.network :private_network, ip: "172.72.72.30"
      gama.vm.hostname = "gama"
      gama.vm.provision "shell", inline: "sudo apt install nginx -y"
    end
end