terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider

provider "aws" {
  region = "ap-southeast-1"
  shared_credentials_file = "/home/vaibhavg/.aws/credentials"
 }


resource "aws_instance" "tfdemoec2" {
  ami           = "ami-0d058fe428540cd89"
  instance_type = "t2.micro"

  tags = {
    Name = var.ec2_name
  }
}
