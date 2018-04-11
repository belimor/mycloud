#!/bin/bash

sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
ansible --version
echo "== == =="
echo "Ansible configuration fiel:"
cat /etc/ansible/ansible.cfg | grep -v "#" | grep -v -e '^$'
echo "== == =="
echo "ANSIBLE_ROLES_PATH"
echo ${ANSIBLE_ROLES_PATH}
sed -i s/#roles_path/roles_path/ /etc/ansible/ansible.cfg
echo "Ansible configuration fiel:"
cat /etc/ansible/ansible.cfg | grep -v "#" | grep -v -e '^$'
echo "== == =="
echo "ANSIBLE_ROLES_PATH"
echo ${ANSIBLE_ROLES_PATH}
