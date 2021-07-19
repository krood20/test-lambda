#!/bin/bash

#Log into docker with aws

#TODO: UNCOMMENT ONE OF TEH BELOW COMMANDS TO LOG IN
#windows powershell
#(Get-ECRLoginCommand).Password | docker login --username AWS --password-stdin <AWS USER ECR URL>

#max/linux
#aws ecr get-login-password --region <REGION> | sudo docker login --username AWS --password-stdin <AWS USER ECR URL>

# docker build -t <LAMBDA NAME> .
# docker tag <LAMBDA NAME> <AWS USER ECR URL>/<LAMBDA NAME>:prod
# docker push <AWS USER ECR URL>/<LAMBDA NAME>:prod
# aws lambda update-function-code --function-name  <LAMBDA NAME> --image-uri <AWS USER ECR URL>/<LAMBDA NAME>:prod