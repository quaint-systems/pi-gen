#!/bin/bash
set -e

# Install the bridge script
install -m 755 files/setup-bridge.sh "${ROOTFS_DIR}/usr/bin/setup-bridge"

