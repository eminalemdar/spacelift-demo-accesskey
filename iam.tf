#resource "aws_iam_access_key" "new_user" {
#  user    = aws_iam_user.new_user.name
#}

resource "aws_iam_user" "new_user" {
  name = "new_user"
}

resource "aws_iam_user" "new_user2" {
  name = "new_user2"
}

resource "aws_iam_user" "new_user3" {
  name = "new_user3"
}

resource "aws_iam_group" "developers" {
  name = "developers"
}

resource "aws_iam_group_membership" "team" {
  name = "iam-group-team"

  users = [
    aws_iam_user.new_user.name,
    aws_iam_user.new_user2.name,
    aws_iam_user.new_user3.name,
  ]

  group = aws_iam_group.developers.name
}
