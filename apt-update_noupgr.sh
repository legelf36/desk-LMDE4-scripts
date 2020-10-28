#!/bin/bash
set -e

sudo apt update
sudo apt install -f
sudo apt autoremove
sudo apt autoclean

