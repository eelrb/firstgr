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
