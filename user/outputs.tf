output "user_arn" {
  value = "${aws_iam_user.user.arn}"
}

output "user_name" {
  value = "${aws_iam_user.user.name}"
}

output "user_id" {
  value = "${aws_iam_user.user.unique_id}"
}

output "access_key_id" {
  value = "${var.manage_keys == "true" ?  element(concat(aws_iam_access_key.user-key.*.id, list("")), 0) : "Unmanaged" }"
}


output "secret_access_key" {
  value = "${var.manage_keys == "true" ?  element(concat(aws_iam_access_key.user-key.*.encrypted_secret, list("")), 0) : "Unmanaged" }"
}

# Due to a conditional and needing to print the only element presented
output "password" {
  value = "${var.gui_access == "true" ?  element(concat(aws_iam_user_login_profile.user.*.encrypted_password, list("")), 0) : "Unmanaged" }"
}
