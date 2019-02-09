provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {}
}

resource "aws_codebuild_project" "terraform-build" {
  name = "Infra"
  description = "Build Pipeline for the Latetrains.io Infrastructure"
  build_timeout = "5"
  service_role = "${aws_iam_role.terraform-full-access.arn}"
  badge_enabled = true

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image = "aws/codebuild/ubuntu-base:14.04"
    type = "LINUX_CONTAINER"
  }

  source {
    type = "GITHUB"
    location = "https://github.com/latetrains/infra.git"
    git_clone_depth = 1
  }

  tags {
    Owner = "terraform"
  }
}