resource "aws_iam_user" "user" {
  name = "${var.name}"
}

resource "aws_iam_access_key" "user-key" {
  count   = "${var.manage_keys == "true" ? 1 : 0}"
  user    = "${aws_iam_user.user.id}"
  pgp_key = "${var.pgp_key}"
}

resource "aws_iam_user_login_profile" "user" {
  count   = "${var.gui_access == "true" ? 1 : 0}"
  user    = "${aws_iam_user.user.name}"
  pgp_key = "${var.pgp_key}"
}
