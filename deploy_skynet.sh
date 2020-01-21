#!/bin/bash

echo "SSH username: "
read USER
ansible-playbook -i inventory deploy_skynet.yaml --ask-pass --ask-become-pass --extra-var "ansible_user=$USER"
