#!/bin/bash

#Let's stop the script if anything errors out. 
set -o errexit
sudo apt-get update
####---- Docker Compose ----####
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $USER
####---- Portainer ----####
sudo docker pull portainer/portainer-ce:latest
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
rm docker_portainer_debian_install.sh
