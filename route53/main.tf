provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {}
}

resource "aws_route53_zone" "main" {
  name = "${var.domain_name}."

  comment = "Main hosted zone for ${var.domain_name} - Managed by Terraform"

  tags {
    Owner = "terraform"
  }
}

resource "aws_route53_record" "blog_subdomain" {
  name = "blog"
  type = "A"
  zone_id = "${aws_route53_zone.main.id}"
  records = [
    "${var.blog_subdomain_ip}"
  ]
}
