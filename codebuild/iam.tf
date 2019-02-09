data "aws_iam_policy_document" "terraform-full-access-policy" {
  statement {
    actions = [
      "*"
    ]
    resources = [
      "*"
    ]
  }

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

resource "aws_iam_role" "terraform-full-access" {
  name = "TerraformFullAccess"
  assume_role_policy = "${data.aws_iam_policy_document.terraform-full-access-policy.json}"
}
