provider "aws" {
  access_key = "a"
  secret_key = "b"
  region     = "us-east-1"
}

resource "aws_instance" "example-test" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}