#!/bin/bash
# Update package index and install dependencies
sudo apt update sudo apt install -y software-properties-common git
# Install Docker and Docker Compose
sudo apt-get install -y docker.io docker-compose
# Install Ansible sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
# Install Node.js and npm
sudo apt install -y nodejs npm
# Clone AWX repository git clone https://github.com/ansible/awx.git
wget https://codeload.github.com/ansible/awx/zip/refs/tags/17.1.0 -O awx-17.1.0.zip unzip awx-17.1.0.zip
# Navigate to the installer directory
cd awx/installer
# Install AWX dependencies
npm install
# Copy inventory file
cp inventory.example inventory
# Install AWX
ansible-playbook -i inventory install.yml
