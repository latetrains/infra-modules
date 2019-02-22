provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {}
}

resource "aws_lambda_function" "base_lambda" {
  function_name = "${var.function_name}"
  handler = "${var.function_handler}"
  role = "${aws_iam_role.lambda_iam_role.arn}"
  runtime = "${var.function_runtime}"
  filename = "${var.function_filename}"
}