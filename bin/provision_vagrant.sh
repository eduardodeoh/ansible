#!/usr/bin/env bash

ansible-playbook \
	playbooks/vagrant_rails.yml \
	-u vagrant \
	-i inventory/vagrant.sample \
	-s \
	--private-key=~/.vagrant.d/insecure_private_key \
	$*
