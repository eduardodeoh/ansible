#!/bin/env bash

# Just provision a bare VM from $vps

# provision.sh [vps] [env]
# provision.sh digital_ocean|aws staging|production
# provision.sh aws production
# provision.sh digital_ocean staging

vps="$1"
env="$2"

shift 2

ansible-playbook \
	playbooks/provisioners/${vps}.yml \
	-i inventory/${vps} \
	$*

# TODO
# Call provider API to fill invetory files of the recent created VM
# digital_ocean.py > ../inventory/{$env}
