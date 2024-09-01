#!/bin/bash

##################################################
# Author: Satheesh.Annangi
# Date: 01-09-2024
# Version: V0.0.1
# This script will report AWS resource usage
###################################################

#aws ec2
#aws IAM

# ec2 instance list

aws describe-instances

# IAM user list

aws list-users
