provider "aws" {
  region = "us-east-1"
  profile = "account-name"
  version = "~> 3.0"
}

terraform {
  backend "s3" {
    bucket = "remote-terraform-state"
    key = "eks/node-group.tfstate"
    region = "us-east-1"
  }
}