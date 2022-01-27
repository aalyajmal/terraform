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
  access_key =  "AKIATRQCHRRYHDQEGZVK"
  secret_key = "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"
}
resource "aws_instance" "web" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

