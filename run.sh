#!/bin/sh

exec kvm \
	-nographic \
	-kernel ../linux/arch/x86/boot/bzImage \
	-append "console=ttyS0,115200 loglevel=4 root=/dev/ram rdinit=/sbin/init" \
	-initrd initrd.gz \
	-m 512 \
	"$@"
