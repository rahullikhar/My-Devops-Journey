#!/bin/bash

USER_TO_CHECK=$1

if [ -z "$USER_TO_CHECK" ]; then
    echo "Please provide a username. Usage: ./check_user.sh <username>"
    exit 1
fi

# 'who' lists logged-in users, 'grep -wq' searches for the exact word quietly
if who | grep -wq "$USER_TO_CHECK"; then
    echo "Alert: User '$USER_TO_CHECK' is currently logged in."
else
    echo "Secure: User '$USER_TO_CHECK' is NOT currently logged in."
fi