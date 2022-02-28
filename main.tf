# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
}

# Create a VPC including a cidr block
resource "aws_vpc" "main" {
  cidr_block       = "190.160.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

# Create a subnet
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "190.160.1.0/24"

  tags = {
    Name = "subnet"
  }
}