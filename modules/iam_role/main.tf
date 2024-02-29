

resource "aws_iam_role" "lambda_role" {
  name   ="jobansrole"
  assume_role_policy = var.assume_role_policy
}
