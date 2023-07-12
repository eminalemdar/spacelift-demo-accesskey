resource "aws_iam_access_key" "new_user" {
  user    = aws_iam_user.new_user.name
}

resource "aws_iam_user" "new_user" {
  name = "new_user"
}
