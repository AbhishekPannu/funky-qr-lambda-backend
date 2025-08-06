terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "funky-qr-lambda-backend"
    versioning {
        enabled = true
    }
    acl = "private"
}

resource "aws_dynamodb_table" "terraform_state_locking" {
    name = "funky-qr-state-locking"
    billing_mode = "PAY_PER_REQUESt"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
}