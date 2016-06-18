#!/usr/bin/env bash

# start/restart/reinstall VM
yes | vagrant destroy && vagrant up && vagrant ssh

# stop and destroy VM
vagrant halt && yes | vagrant destroy
