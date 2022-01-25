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
  region = "us-east-1"
  
}

resource "aws_instance" "myfirst-ec2" {
  count = 2
  ami           = var.ami
  instance_type = var.I_type

  subnet_id = element(var.subnet, count.index)

  tags = {
    Name = "terraform-${count.index+1}"
  }  

}
