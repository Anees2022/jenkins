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
  access_key = "AKIASKFSBVFUPCVZHK7U"
  secret_key = "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"
}

resource "aws_instance" "server" {
  count = 4 # create four similar EC2 instances

  ami           = "ami-0ca3b0faa0c4c4bbd"
  instance_type = "t2.micro"
  key_name = "osaka-server2"

  tags = {
    Name = "Server ${count.index}"
  }
}
