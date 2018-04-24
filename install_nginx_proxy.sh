#!/bin/bash
#https://galaxy.ansible.com/geerlingguy/jenkins/

sudo ansible-galaxy install openmicroscopy.nginx-proxy

ansible-playbook -e "" ansible_playbooks/nginx-proxy.yml
