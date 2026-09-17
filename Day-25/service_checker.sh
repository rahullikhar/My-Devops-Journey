#!/bin/bash

# The service name (like nginx, sshd, or docker) is passed as an argument
SERVICE=$1

if [ -z "$SERVICE" ]; then
    echo "Error: Please provide a service name to check."
    echo "Usage: ./service_checker.sh <service_name>"
    exit 1
fi

# systemctl is-active checks the status quietly
if systemctl is-active --quiet "$SERVICE"; then
    echo "SUCCESS: The service '$SERVICE' is currently running."
else
    echo "CRITICAL ALERT: The service '$SERVICE' is down or does not exist!"
fi