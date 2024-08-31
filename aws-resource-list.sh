#!/bin/bash

#########################################################
# Author: Satheesh
# Version V0.0.1
# This script will list out  resources in aws account
# AWS Services used in organization and script supports same
# ec2
# required inputs for this script are region name and service name
#
# Usage: ./aws_resource_list.sh  <aws_region> <aws_service>
# Example: ./aws_resource_list.sh us-east-1 ec2

# validation  command line arguments count
if [ $# -ne 2 ];
then
   echo "Usage: ./aws_resource_list.sh  <aws_region> <aws_service>"
   echo "Example: ./aws_resource_list.sh us-east-1 ec2"
   exit 1
fi