#!/usr/bin/env bash

# update gcc to 4.9
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update -y

sudo apt-get install gcc-4.9 -y
sudo apt-get install g++-4.9 -y

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 20
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 20

sudo update-alternatives --config gcc
sudo update-alternatives --config g++
