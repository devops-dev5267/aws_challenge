provider "aws" {
  region     = "us-east-1"
}

# vpc.tf

data "aws_availability_zones" "available" {
}

resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "vpc-${var.env}"
    Environment = var.env
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_1

  tags = {
    Name = "managed-public-subnet-${var.env}"
    Environment = var.env
  }
  
}
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_2

  tags = {
    Name = "managed-private-subnet-${var.env}"
    Environment = var.env
  }
}