#!/bin/bash
sudo apt-get update -y && apt-get upgrade -y
chmod +x docker_install.sh
./docker_install.sh
sudo apt-get update
adduser --quiet --disabled-password --shell /bin/bash --home /home/guacuser --gecos "User" guacuser
echo "guacuser:svr5cReXRd6A6eF9" | chpasswd
docker run -d --restart unless-stopped -v /var/lib/docker/volumes/guacamole:/config -p 80:8080 hasanzade99/guacamole:autoinstall
sleep 5
rm -r /var/lib/docker/volumes/guacamole/guacamole
cp -r /tmp/guacamole/guacamole /var/lib/docker/volumes/guacamole/
reboot
