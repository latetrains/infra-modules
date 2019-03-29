resource "aws_s3_bucket" "main_bucket" {
  bucket = "${var.bucket_name}"
  acl    = "public-read"
  region = "${var.region}"

  website {
    index_document = "${var.index_document}"
    error_document = "${var.error_document}"
  }

  tags {
    Owner = "terraform"
    Type  = "WebsiteBucket"
  }
}

data "aws_iam_policy_document" "public_read_document" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.main_bucket.arn}/*"]

    condition {
      test = "StringLike"
      values = [
      "http://${var.bucket_name}",
      "https://${var.bucket_name}"
      ]
      variable = "aws:Referer"
    }

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}

resource "aws_s3_bucket_policy" "public_read_policy" {
  bucket = "${aws_s3_bucket.main_bucket.id}"
  policy = "${data.aws_iam_policy_document.public_read_document.json}"
}
