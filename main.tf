provider "aws" {
  access_key = "AKIAJIGB2WGX46XI7EZQ"
  secret_key = "mILLZi+/2+LAoPa8GYz370egGPGx4RYpBgYu5GJv"
  region     = "us-east-1"
}

resource "aws_instance" "example-test" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}