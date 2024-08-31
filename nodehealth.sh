#!/bin/bash
###########################
# Author: Satheesh
# Date written: 30-08-2024
# This scripts outputs node health
# Version V1
############################
set -x   # debug mode
set -e  # exit the script when there is an error
set -o pipefail   #  exit the script when pipe fail  issues

df -h

free -g

nproc

ps -ef | grep /usr/bin | awk -F " " '{print $2}'

