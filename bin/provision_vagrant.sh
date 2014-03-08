#!/bin/env bash

ansible-playbook \
	..\pre_setup_site.yml \
	-u vagrant \
	-i vagrant.yml \
	-s \
	--private-key=/vagrant/insecure_private_key \
	$*
