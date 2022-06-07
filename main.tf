terraform {
  required_providers {
    aws = {
      version = ">= 4.0"
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region     = "ap-northeast-3"
  access_key = "AKIASKFSBVFUJOYJWLFU"
  secret_key = "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"
}

resource "aws_instance" "server" {
  count = 4 # create four similar EC2 instances

  ami           = "ami-0ca3b0faa0c4c4bbd"
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${count.index}"
  }
}
