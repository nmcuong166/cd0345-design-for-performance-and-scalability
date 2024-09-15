provider "aws" {
  region  = "us-east-1"
  profile = "aws-udacity"
}

resource "aws_instance" "Udacity-T2" {
  ami           = "ami-0ab4d1e9cf9a1215a"
  instance_type = "t2.micro"
  count         = 4

  tags = {
    Name = "Udacity T2"
  }
}

resource "aws_instance" "Udacity-M4" {
  ami           = "ami-0ab4d1e9cf9a1215a"
  instance_type = "m4.large"
  count         = 2

  tags = {
    Name = "Udacity M4"
  }
}