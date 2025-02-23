#!/bin/bash
set -e

# Wait for NetworkManager to be fully up
sleep 5

echo "Setting up NetworkManager bridge (br0)..."

nmcli connection add type bridge ifname br0 con-name br0
nmcli connection modify br0 ipv4.method auto

nmcli connection add type bridge-slave ifname eth0 master br0

# Bring up the bridge
nmcli connection up br0
nmcli connection reload
