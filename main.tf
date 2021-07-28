terraform {
  required_version = ">= 0.13.0"

  required_providers {
    aws = ">= 3.34"
  }
}



provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf1001-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}