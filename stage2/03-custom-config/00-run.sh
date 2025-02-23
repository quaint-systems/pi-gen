#!/bin/bash
set -e

install -m 644 files/etc-issue "${ROOTFS_DIR}/etc/issue"
install -m 644 files/etc-ip-issue "${ROOTFS_DIR}/etc/issue.d/IP.issue"
install -m 644 files/etc-motd "${ROOTFS_DIR}/etc/motd"

# Remove the script that prints the kernel version on login
rm -f "${ROOTFS_DIR}/etc/update-motd.d/10-uname"

# Remove any rfkill Wi-Fi warning script
rm -f "${ROOTFS_DIR}/etc/profile.d/wifi-check.sh"