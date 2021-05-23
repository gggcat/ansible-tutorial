#!/bin/bash

#
# Link ssh-key
#
mkdir -p ~/.ssh
chown -R root:root ~/.ssh
chmod -R 0700 ~/.ssh
cp -ip /run/secrets/host_ssh_key ~/.ssh/id_rsa
chmod -R 0600 ~/.ssh

#
# Install Ubuntsu package
#
apt-get update
apt-get install -y software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt-get install -y ansible

exec "$@"