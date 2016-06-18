#!/usr/bin/env bash

# install/update essentials
apt-get install python-software-properties \
                build-essential \
                git \
                nano \
                curl \
                mc \
                -y

# install stress to be able to quickly check if the VM can use all of the resources of the host CPU
# usage:
  # for 1 core: stress -c 1
  # for 4 cores: stress -c 4
apt-get install stress -y

# update after essentials (especially python-software-properties)
apt-get update -y