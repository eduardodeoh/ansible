#!/usr/bin/env bash

# Provision role from simplevps.yml into a existing server from inventory

# deploy.sh [remote_user] [env] [*args]
# deploy.sh ubuntu staging
# deploy.sh ubuntu staging -t role_nginx

#Use example:
#In this ansible directory, type:
# bin/deploy.sh ubuntu staging -t role_nginx
# ubuntu = remote_user
# staging = deploy_to_enviroment
# -t role_nginx is any ansible parameter (this is optional, instead execute normal playbook)

#default remote_user is root
remote_user="$1"

#Inventory - production | staging
deploy_to_environment="$2"

#Remove parameter 1 and parameter 2 to attend ansible extra parameters via cli
shift 2

ansible-playbook \
	playbooks/simplevps.yml \
	-i inventory/${deploy_to_environment} \
	--extra-vars "remote_user=${remote_user}" \
	$*
