variable "name" {
  type = "string"
}

variable "pgp_key" {
  type    = "string"
}

variable "manage_keys" {
  type    = "string"
  default = "true"
}

variable "gui_access" {
  type    = "string"
  default = "true"
}
