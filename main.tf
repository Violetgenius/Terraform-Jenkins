terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
  backend "remote" {
    hostname = "artifactory.com"
    organization = "tf-backend-local"
  }
}
provider "aws" {
    region = "us-east-1" 
    access_key = "AKIAV64LQA72PWU4FRRY"
    secret_key = "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"
}

resource "aws_instance" "foo" {
  ami           = "ami-05fa00d4c63e32376" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}
