resource "aws_route53_record" "alias_dns_record" {
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "A"

  alias {
    name    = "${var.dns_name}"
    zone_id = "${var.hosted_zone_id}"
  }
}
