#!/bin/bash

# ssh to user "kim" on laptop at "192.168.0.102" for first time
ssh kim@192.168.0.102

# Generate keys for ssh
ssh-keygen -t rsa

# Copy key to ssh user "kim" on laptop at "192.168.0.102"
ssh-copy-id kim@192.168.0.102

# Find the IP of computer
ifconfig

