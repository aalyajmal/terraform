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
  access_key = "AKIATRQCHRRYDMN5TKAG"
  secret_key = "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"
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
