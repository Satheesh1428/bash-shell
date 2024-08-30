#!/bin/bash
###########################
# Author: Satheesh
# Date written: 30-08-2024
# This scripts outputs node health
# Version V1
############################
echo "print the disk space"
df -h
echo "print the free space"
free -g
echo "print the number of CPUs"
nproc


