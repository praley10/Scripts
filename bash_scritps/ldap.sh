#!/bin/bash

#Let's stop the script if anything errors out. 
set -o errexit
sudo apt-get update && sudo apt upgrade -y
sudo apt install apache2 php php-cgi libapache2-mod-php php-mbstring php-common php-pear -y
sudo apt install slapd ldap-utils -y
sudo apt -y install ldap-account-manager
sudo a2enconf php*-cgi
sudo systemctl restart apache2
sudo systemctl enable apache2
sudo systemctl reload apache2
