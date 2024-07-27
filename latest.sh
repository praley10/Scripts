#!/bin/bash

#Let's stop the script if anything errors out. 
set -o errexit
apt update
apt upgrade -y
####---- Install script dependencies ----####
####---- Install Git ----####
apt install git -y
####---- Install Curl Command ----####
apt install curl -y
####----- Install Qemu ----####
sudo apt -y install qemu-guest-agent
sudo systemctl enable qemu-guest-agent
sudo systemctl start qemu-guest-agent
####---- Post Install Clean up ----####
rm latest.sh
