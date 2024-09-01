#!/bin/bash

##################################################
# Author: Satheesh.Annangi
# Date: 01-09-2024
# Version: V0.0.1
# This script will report AWS resource usage
###################################################

#aws ec2
#aws IAM

set -x

# ec2 instance list

echo "print ec2 instances list"

aws ec2 describe-instances |jq '.Reservations[].Instances[]."InstanceId'

# IAM user list

echo "print IAM users list"

aws  iam list-users
