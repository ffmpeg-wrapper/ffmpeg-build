#!/usr/bin/env bash

LOG_FILE="build.log"
VM_DIR="./vm"
VM_BUILD_DIR="$VM_DIR/build"
BUILD_DIR="build"

export VAGRANT_CWD="$VM_DIR"

# run vagrant & log the output in the $LOG_FILE
"$VM_DIR/vagrant.sh" | tee -a "$LOG_FILE"

# remove $_BUILD_DIR
rm -rf "$BUILD_DIR"

# move $VM_BUILD_DIR to $_BUILD_DIR
mv -f "$VM_BUILD_DIR" "$BUILD_DIR"
