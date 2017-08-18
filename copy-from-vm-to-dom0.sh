#!/usr/bin/env bash

# Variables
# --------------------------------------------------------------#

DIR_PREFIX=/srv/salt
VM_TARGET=
DIR_TARGET=

# Script
# --------------------------------------------------------------#

qvm-run --pass-io $VM_TARGET "cat ${DIR_TARGET}/my-config.top" > ${DIR_PREFIX}/my-config.top
files=$(qvm-run --pass-io $VM_TARGET "ls ${DIR_TARGET}/my-config")
mkdir -p ${DIR_PREFIX}/my-config

for file in $files; do
  qvm-run --pass-io $VM_TARGET "cat ${DIR_TARGET}/my-config/$file" > ${DIR_PREFIX}/my-config/$file
done
