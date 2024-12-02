#!/bin/bash
./generate_certificate.sh
ansible-playbook -i inventory/hosts.yml site.yml --check -v
