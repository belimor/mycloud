#!/bin/bash
#https://galaxy.ansible.com/geerlingguy/jenkins/

#sudo ansible-galaxy install openmicroscopy.nginx-proxy
sudo ansible-galaxy install ypsman.nginx-proxy

# Create self signed certificate
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

ansible-playbook -e "" ansible_playbooks/nginx-proxy.yml
