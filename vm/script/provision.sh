#!/usr/bin/env bash

# |--------------------------------------------------------------------------------------------------------------------
# | Vagrant Provision Script
# |--------------------------------------------------------------------------------------------------------------------

export _VAGRANT_DIR="/vagrant"
export _SCRIPT_DIR="$_VAGRANT_DIR/script"
export _SUBTASKS_DIR="$_SCRIPT_DIR/subtasks"
export _CONTENT_DIR="$_SCRIPT_DIR/content"
export _BUILD_DIR="$_VAGRANT_DIR/build"

# update before provisioning
sudo apt-get update -y

# install essentials
"$_SUBTASKS_DIR/install_essentials.sh"

# install gcc
"$_SUBTASKS_DIR/install_gcc.sh"

# install git
"$_SUBTASKS_DIR/install_git.sh"

# install custom content
"$_SUBTASKS_DIR/install_custom_content.sh"

# compile FFMPEG
"$_SUBTASKS_DIR/compile_ffmpeg.sh"

# copy FFMPEG executables into $_BUILD_DIR
"$_SUBTASKS_DIR/copy_ffmpeg_builds.sh"
