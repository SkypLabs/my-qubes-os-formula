#!/usr/bin/env bash

# Variables
# --------------------------------------------------------------#

DIR_PREFIX=/srv/salt
VM_TARGET=personal-dev
DIR_TARGET=/home/user/Documents/my-qubes-os-formula

# Script
# --------------------------------------------------------------#

qvm-run --pass-io ${VM_TARGET} "cat ${DIR_TARGET}/my-config.top" > ${DIR_PREFIX}/my-config.top

directories=$(qvm-run --pass-io ${VM_TARGET} "find ${DIR_TARGET}/my-config -type d -printf '%P\n'")
files=$(qvm-run --pass-io ${VM_TARGET} "find ${DIR_TARGET}/my-config -type f -printf '%P\n'")

for dir in ${directories}; do
  mkdir -p "${DIR_PREFIX}/my-config/${dir}"
done

for file in ${files}; do
  qvm-run --pass-io ${VM_TARGET} "cat ${DIR_TARGET}/my-config/${file}" > "${DIR_PREFIX}/my-config/${file}"
done
