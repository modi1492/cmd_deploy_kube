#!/usr/bin/env bash
ansible-playbook shadowsockets.yml
git clone --recurse-submodules https://github.com/modi1492/Kubernetes-ansible.git \
  -b v1.13 && cd Kubernetes-ansible
bash scripts/Install-ansible.sh
ansible all -m ping
ansible-playbook 01-setup.yml
ansible-playbook 02-docker.yml
bash 03-get-binaries.sh all
ansible-playbook 04-tls.yml
ansible-playbook 05-etcd.yml
ansible-playbook 06-HA.yml
ansible-playbook 07-master.yml
ansible-playbook 08-bootstrap.yml
ansible-playbook 09-node.yml
ansible-playbook 10-addon.yml