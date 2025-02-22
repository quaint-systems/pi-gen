#!/bin/bash
set -e

install -m 644 files/etc-issue "${ROOTFS_DIR}/etc/issue"
install -m 644 files/etc-ip-issue "${ROOTFS_DIR}/etc/issue.d/IP.issue"
install -m 644 files/etc-motd "${ROOTFS_DIR}/etc/motd"