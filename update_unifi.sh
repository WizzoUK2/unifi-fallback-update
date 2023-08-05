#!/bin/bash

# List of device IPs or hostnames
devices=(
    "10.10.50.150"
    "10.10.50.151"
    "10.10.50.152"
    "10.10.50.153"
    "10.10.50.154"
    "10.10.50.155"
    "10.10.50.156"
    "10.10.50.157"
    "10.10.50.158"
    "10.10.50.160"
    "10.10.50.161"
    "10.10.50.162"
    "10.10.50.163"
    "10.10.50.164"
    "10.10.50.165"
    "10.10.50.166"
    "10.10.50.167"
    "10.10.50.168"
    "10.10.50.169"
    "10.10.50.170"
    "10.10.50.171"
    "10.10.50.172"
    "10.10.50.173"
)

new_ip="x"

# Iterate through the list of devices
for device in "${devices[@]}"; do
    echo "Updating UDHCP_FALLBACK_IP on ${device}..."
    new_ip="${device//\./\\.}"
    echo "New IP with escapes = " ${new_ip}

    # SSH into the device and update the /etc/udhcpc/udhcpc fil


   ssh "root@${device}" "sed -i 's/^UDHCPC_FALLBACK_IP=\"192\.168\.1\.20\"$/UDHCPC_FALLBACK_IP=\""${new_ip}"\"/' /etc/udhcpc/udhcpc"



    echo "UDHCP_FALLBACK_IP updated on ${device}."

done

echo "All devices updated."
