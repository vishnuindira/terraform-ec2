terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-west-1"
}

resource "aws_instance" "terra-cloud-ec2" {
  ami                         = "ami-0036b4598ccd42565"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  tags = {
    "Name" = "terra-cloud"
  }
}
