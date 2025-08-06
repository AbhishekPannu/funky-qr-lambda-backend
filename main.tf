terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "s3" {
  source = "./modules/s3"
  bucket_name = "funky-qr-lambda-backend-s3"
}

module "dynamodb" {
  source = "./modules/dynamodb"
  bucket_name = "funky-qr-state-locking-db"
}