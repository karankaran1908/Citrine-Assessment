# Citrine-Assessment

# Requirements

Terraform installed and AWS CLI already configured on the machine.

# Functionalities Implemented:

  1. Deploy application into a clean environment.
  
  2. Update application with new code changes.
  
The sample application’s source code can be found here: https://github.com/CitrineInformatics/sample-service

# Technologies Used: 

Terraform

# Scripts to perform the application deployment and update:

## deployment.sh

Used to create the Infrastructure on AWS and return Output DNS and repository URL of ECR.

Command: ./deployment.sh

## update.sh

Used to deploy the image of the application on ECR using repository URL of ECR and repository of the application as parameters od script.

Command: ./update.sh <Application repository Path> <repository URL> <docker tag(Optional)>
  
For updating the application with new code changes, use repository path of updated application.
