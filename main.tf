provider "aws" {
  access_key = "${var.ACCESS_KEY}"
  secret_key = "${var.SECRET_KEY}"
  region     = "us-east-1"
}

resource "aws_instance" "example-test" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}



output "ip" {
  value = "${aws_instance.example-test.public_ip}"
}


module "thomas" {
  source   = "./user"
  name     = "thomas"

  // base64-encoded PGP public key (NOT PEM FORMAT)
  pgp_key = ""
}

output "thomas-accesskey" {
  value = "${module.thomas.access_key_id}"
}

output "thomas-secretkey" {
  value = "${module.thomas.secret_access_key}"
}

output "thomas-password" {
  value = "${module.thomas.password}"
}



module "blee" {
  source   = "./user"
  name     = "blee"

  // base64-encoded PGP public key (NOT PEM FORMAT)
  pgp_key = ""

 gui_access  = "true"
}

output "blee-accesskey" {
  value = "${module.blee.access_key_id}"
}

output "blee-secretkey" {
  value = "${module.blee.secret_access_key}"
}

output "blee-password" {
  value = "${module.blee.password}"
}

