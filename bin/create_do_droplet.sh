#!/bin/zsh

ansible-playbook \
	playbooks/provisioners/digital_ocean.yml \
	-i inventory/digital_ocean \
	$*
