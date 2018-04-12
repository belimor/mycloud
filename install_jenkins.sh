#!/bin/bash
#https://galaxy.ansible.com/geerlingguy/jenkins/

sudo ansible-galaxy install geerlingguy.jenkins

ansible-playbook -e "jenkins_admin_password=mypassword" ansible_playbooks/jenkins.yml
