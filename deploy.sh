#! /usr/bin/env bash

az account set --subscription ${1?Error: Please set subscription}
cd $1
terraform init
terraform apply -auto-approve