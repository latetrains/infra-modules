output "bucket_domain_name" {
  value = "${aws_s3_bucket.main_bucket.bucket_domain_name}"
}

output "bucket_arn" {
  value = "${aws_s3_bucket.main_bucket.arn}"
}

output "website_domain" {
  value = "${aws_s3_bucket.main_bucket.website_domain}"
}

output "website" {
  value = "${aws_s3_bucket.main_bucket.website}"
}

output "website_endpoint" {
  value = "${aws_s3_bucket.main_bucket.website_endpoint}"
}

output "hosted_zone_id" {
  value = "${aws_s3_bucket.main_bucket.hosted_zone_id}"
}
