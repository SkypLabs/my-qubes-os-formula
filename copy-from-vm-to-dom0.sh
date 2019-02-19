#!/usr/bin/env bash

# Variables
# --------------------------------------------------------------#

DIR_PREFIX=/srv/salt
VM_TARGET=
DIR_TARGET=

# Script
# --------------------------------------------------------------#

qvm-run --pass-io ${VM_TARGET} "cat ${DIR_TARGET}/my-config.top" > ${DIR_PREFIX}/my-config.top

directories=$(qvm-run --pass-io ${VM_TARGET} "find ${DIR_TARGET}/my-config -type d")
files=$(qvm-run --pass-io ${VM_TARGET} "find ${DIR_TARGET}/my-config -type f")

for dir in ${directories}; do
  mkdir -p "${dir}"
done

for file in ${files}; do
  qvm-run --pass-io ${VM_TARGET} "cat ${file}" > "${file}"
done
