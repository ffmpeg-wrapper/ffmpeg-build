#!/usr/bin/env bash

# remove $_BUILD_DIR
rm -rf "$_BUILD_DIR"

# create $_BUILD_DIR
mkdir "$_BUILD_DIR"

# copy FFMPEG executables into $_BUILD_DIR
sudo cp /root/bin/{ffmpeg,ffplay,ffprobe,ffserver,x264} "$_BUILD_DIR"
