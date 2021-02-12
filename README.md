# Citrine-Assessment

# Requirements

Terraform installed and AWS CLI already configured on the machine.

# Functionalities Implemented:

  Deploy application into a clean environment.
  
  Update application with new code changes.
  
The sample application’s source code can be found here: https://github.com/CitrineInformatics/sample-service

# Technologies Used: 

  Terraform

# Scripts to perform the application deployment and update:

## deployment.sh

   Used to create the Infrastructure on AWS and return Output DNS and repository URL of ECR.

   Command: ./deployment.sh

## update.sh

   Used to deploy the image of the application on ECR using repository URL of ECR and repository of the application as parameters of script.

   Command: ./update.sh <Application repository Path(Required)> <repository URL(Required)> <docker tag(Optional)>
  
   For updating the application with new code changes, use repository path of updated application.

# Steps to run

   - Run ./deployment.sh in the repository that has .tf files

   - Note the outputs i.e. OutputDNS and repositoryURL

   - Run ./update.sh with Application repository path(Path where Dockerfile of application is present) and repositoryURL

   - Run OutputDNS in browser to access the application

