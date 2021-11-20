all: install_docker install_tools install_docker_compose install_pihole install_homeassistant

update_os:
	sudo apt-get update && sudo apt-get upgrade

install_docker: update_os
	curl -fsSL https://get.docker.com -o get-docker.sh
	sudo sh get-docker.sh
	sudo usermod -aG docker pi
	docker version
	docker info

install_docker_compose:
	sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && sudo python3 get-pip.py

remove_docker:
	sudo apt-get purge docker-ce -y
	sudo rm -rf /var/lib/docker

install_tools:
	make -C ./tools install_tools install_python_packages

install_pihole: install_docker
	make -C ./pihole install

install_homeassistant: install_docker
	make -C ./home-assistant install
