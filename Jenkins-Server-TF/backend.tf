terraform {
  backend "s3" {
    bucket         = "1-ews-backet1"
    region         = "us-east-1"
    key            = "DevSecOps.pem"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
