resource "aws_codebuild_project" "build_project" {
  name          = "${var.build_name}"
  description   = "${var.build_description}"
  build_timeout = "${var.build_timeout}"
  service_role  = "${aws_iam_role.codebuild_iam_role.arn}"
  badge_enabled = true

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type    = "BUILD_GENERAL1_SMALL"
    image           = "${var.build_image}"
    type            = "LINUX_CONTAINER"
    privileged_mode = true
  }

  source {
    type            = "GITHUB"
    location        = "${var.github_repository}"
    git_clone_depth = 1
  }

  tags {
    Owner = "terraform"
  }
}
