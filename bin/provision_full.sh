#!/bin/env bash

# 1-step provision server
# Get up a VM from $vps and also provision roles from simplevps.yml

# full_provision.sh [vps] [remote_user] [env]
# full_provision.sh digital_ocean staging ubuntu
# full_provision.sh aws production root

vps="$1"
remote_user="$2"
env="$3"

./vm_provision.sh $vps $env

./provision.sh $remote_user $env
