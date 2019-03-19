resource "aws_lambda_function" "base_lambda" {
  function_name    = "${var.function_name}"
  handler          = "${var.function_handler}"
  role             = "${aws_iam_role.lambda_iam_role.arn}"
  runtime          = "${var.function_runtime}"
  filename         = "${path.module}/bootstrap.zip"
  source_code_hash = "${base64sha256(file("${path.module}/bootstrap.zip"))}"

  lifecycle {
    ignore_changes = [
      "filename",
      "source_code_hash",
      "last_modified"
    ]
  }
}
