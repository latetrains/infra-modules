data "aws_iam_policy_document" "lambda_role_policy" {
  statement {
    actions = [
      "sts:AssumeRole",
    ]

    principals {
      type = "Service"

      identifiers = [
        "lambda.amazonaws.com",
      ]
    }
  }
}

resource "aws_iam_role" "lambda_iam_role" {
  name               = "${var.role_name}"
  assume_role_policy = "${data.aws_iam_policy_document.lambda_role_policy.json}"
}
