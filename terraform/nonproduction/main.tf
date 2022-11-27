terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
    region = "us-west-1"
}

terraform {
  backend "s3" {
    bucket = "travbz-terraform-state"
    key    = "stravbz-terraform-state/gha-remote-state/"
    region = "us-west-1"
  }
}


resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-nonp"
  acl    = "private"

  versioning {
    enabled = true
  }
}
