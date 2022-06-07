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
  access_key = "AKIASKFSBVFUFVWUXJXF"
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
