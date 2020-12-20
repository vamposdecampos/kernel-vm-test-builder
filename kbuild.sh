#!/bin/sh

set -e
set -x

mkdir -p kbuild
cp -vf kernel-config kbuild/.config
make -j$(nproc) \
	-C linux \
	O=$(pwd)/kbuild \
	bzImage modules

make -j$(nproc) \
	-C linux \
	O=$(pwd)/kbuild \
	INSTALL_MOD_PATH=$(pwd)/fs \
	modules_install
