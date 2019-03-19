data "aws_iam_policy_document" "codebuild_role_policy" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]

    principals {
      type = "Service"
      identifiers = [
        "codebuild.amazonaws.com"
      ]
    }
  }
}

data "aws_iam_policy_document" "codebuild_policy_document" {
  statement {
    actions = "${var.role_actions}"
    resources = ["${var.role_resources}"]
  }
}

resource "aws_iam_role" "codebuild_iam_role" {
  name = "${var.role_name}"
  assume_role_policy = "${data.aws_iam_policy_document.codebuild_role_policy.json}"
}

resource "aws_iam_role_policy" "codebuild_iam_role_policy" {
  policy = "${data.aws_iam_policy_document.codebuild_policy_document.json}"
  role = "${aws_iam_role.codebuild_iam_role.id}"
}