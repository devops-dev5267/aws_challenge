# This repo is used to create vpc, subnets, sg, load-balancer, igw, ngw and ec2 instances.

## manual steps

1) Create a key pair for logging into the instances and add it to the default values of the variables. https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html 
2) Create access key and secret key for your aws account and put it in ~/.aws/credentials file . https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html
3) Install terraform on your local machine.
4) Adding instance type to the variable file depending up on the use
5) Creating the new ssl certificate and uploading it to IAM and adding the arn to the variable file.

## commands to run

1) Terraform init 
2) terraform plan
3) terraform apply