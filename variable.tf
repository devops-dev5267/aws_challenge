
# vpc variables
variable "cidr_block" {
  description = "cidr block to be used to create the vpc"
  default = "10.100.0.0/16"
}

variable "env" {
  description = "name of the enviroment (example: prod, dev)"
  default = "dev"
}

variable "cidr_1" {
    default = "10.100.1.0/24"
}

variable "cidr_2" {
    default = "10.100.2.0/24"
}

# instance variables
variable "ami" {
  description = "ami from which we need to build the ec2 instance"
  default = "ami-047a51fa27710816e" # provide the ami id
}

variable "key_name" {
  description = "instance key"
  default = "instance-key"
}

variable "instance_type" {
  description = "type of instance that need to be created"
  default = "t2.micro"
}

# Lambda VAriables
variable "lambda_role_name" {
  description = "IAM role name for lambda function"
  default = "lambda-role"
}
variable "lambda_policy_name" {
  description = "IAM policy name for lambda function"
  default = "lambda_logging"
}
variable "log_group_name" {
  description = "name of CW log group name"
  default = "promethium-challenge"
}
variable "function_name" {
  description = "name of the lambda function"
  default = "lambda-test-port"
}