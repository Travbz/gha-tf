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

resource "aws_instance" "travis-hellow-world-instance-2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld2"
  }
}
