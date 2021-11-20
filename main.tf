terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}


resource "aws_instance" "app_server" {
  ami           = "ami-08edbb0e85d6a0a07"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformExample"
  }
}