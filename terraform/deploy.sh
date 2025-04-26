#!/bin/bash 
echo "Initializing Terraform..." 
terraform init 
echo "Applying Terraform..." 
terraform apply -auto-approve 
echo "Building Docker Image..." 
docker build -t shameerawais/assignent4_devops:latest C:\Users\Shameer\OneDrive - Higher Education Commission\Semester 6\DevOps\Assignments\Assignment 4\Assignent4_DevOps\app 
echo "Pushing Docker Image to Docker Hub..." 
docker push shameerawais/assignent4_devops:latest 
echo "Deployment Complete!" 
