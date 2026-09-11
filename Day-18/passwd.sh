#!/bin/bash

USER=${1:-$USER}

chage -1 "$USER" | grep "Password expires"
