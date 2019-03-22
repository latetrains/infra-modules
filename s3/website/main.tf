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
