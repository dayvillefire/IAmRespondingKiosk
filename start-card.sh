#!/bin/bash
# start-card.sh
# @jbuchbinder
#
# Launch RPi emulation instance from SD card

D=/dev/mmcblk0		# SD card

sudo qemu-system-arm -kernel kernel-qemu-4.4.34-jessie \
       -cpu arm1176 -m 256 \
       -append "root=/dev/sda2 rootfstype=ext4 rw" \
       -M versatilepb \
       -serial stdio \
       -hda ${D} \
       -net nic -net user,hostfwd=tcp::2222-:22,hostfwd=tcp::22280-:80

