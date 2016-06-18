#!/usr/bin/env bash

# install essentials
sudo apt-get install python-software-properties \
                build-essential \
                git \
                nano \
                curl \
                mc \
                -y

# update after essentials (especially python-software-properties)
sudo apt-get update -y
