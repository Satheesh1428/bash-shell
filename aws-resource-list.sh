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

# check AWS CLI installed or not
# Assign the arguments to variables and convert the service to lowercase
aws_region=$1
aws_service=$2

if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Please install the AWS CLI and try again."
    exit 1
fi

# check AWS CLI is configured or not

if [ ! -d  ~/.aws ] ;
then
   echo "AWS CLI is not configured. Please configure the AWS CLI and try again."
       exit 1
fi

# List the resources based on the service

case $aws_service in

    ec2)
        echo "Listing EC2 Instances in $aws_region"
        aws ec2 describe-instances --region $aws_region
        ;;
     *)
            echo "Invalid service. Please enter a valid service."
            exit 1
            ;;
esac