#!/bin/bash
#######################################
#                                     #
#             Application             #
#               Update                #
#                                     #
#######################################
#
set -e

sudo apt update -y
sudo apt install -f -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

