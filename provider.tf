terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
  backend "s3" {
    bucket                  = "terraform-s3-state-in-nuggets"
    key                     = "my-terraform-project-website-static"
    region                  = "eu-central-1"
    shared_credentials_file = "~/.aws/credentials"
  }
}


provider "aws" {
  # Configuration options
  region =  "eu-central-1"
}