#!/bin/env bash

# provision.sh digital_ocean|aws

vps="$1"

shift 1

ansible-playbook \
	playbooks/provisioners/${vps}.yml \
	-i inventory/${vps} \
	$*
