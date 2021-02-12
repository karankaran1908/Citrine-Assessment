#!/bin/bash


#initialisation
echo terraform initialisation
terraform init

#Create Infrastructure
echo Creating Infrastructure
terraform apply -var-file=variables.tfvars -auto-approve

