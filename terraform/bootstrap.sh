#!/bin/bash
component=$1
app_version=$3
environ=$2
dnf install ansible -y
pip3.9 install ansible botocore boto3
ansible-pull -i localhost, -U https://github.com/joindevops-1/expense-roles-tf.git -e component=$component -e app_version=$app_version -e env=$environ main.yaml