#!/bin/bash

#
# Link ssh-key
#
mkdir -p ~/.ssh
chown -R root:root ~/.ssh
chmod -R 0700 ~/.ssh
cp -ip /run/secrets/secret_key ~/.ssh/id_rsa
cp -ip /run/secrets/public_key ~/.ssh/id_rsa.pub
chmod -R 0600 ~/.ssh

#
# Install Ubuntsu package
#
#apt-get update
#apt-get install -y software-properties-common
#apt-add-repository --yes --update ppa:ansible/ansible
#apt-get install -y ansible
apt-get install sshpass -y

pip install ansible

exec "$@"