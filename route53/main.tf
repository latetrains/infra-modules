resource "aws_route53_zone" "main" {
  name = "${var.domain_name}."

  comment = "Main hosted zone for ${var.domain_name} - Managed by Terraform"

  tags {
    Owner = "terraform"
  }
}

resource "aws_route53_record" "blog" {
  zone_id = "${aws_route53_zone.main.zone_id}"
  name = "blog.${var.domain_name}"
  type = "A"
  ttl = "300"
  records = [
    "${var.blog_subdomain_ip}"
  ]
}
