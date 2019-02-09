data "aws_iam_policy_document" "terraform-assume-role-policy" {
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

data "aws_iam_policy_document" "terraform-full-access-policy-document" {
  statement {
    actions = [
      "*"
    ]
    resources = [
      "*"
    ]
  }
}

resource "aws_iam_role" "terraform-full-access" {
  name = "TerraformFullAccess"
  assume_role_policy = "${data.aws_iam_policy_document.terraform-assume-role-policy.json}"
}

resource "aws_iam_role_policy" "terraform-full-access-policy" {
  policy = "${data.aws_iam_policy_document.terraform-full-access-policy-document.json}"
  role = "${aws_iam_role.terraform-full-access.id}"
}