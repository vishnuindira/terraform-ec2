terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_instance" "terra-cloud-ec2" {
  ami                         = "ami-0036b4598ccd42565"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  tags = {
    "Name" = "terra-cloud"
  }
}
