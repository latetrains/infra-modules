resource "aws_route53_zone" "main" {
  name = "${var.domain_name}."

  comment = "Main hosted zone for ${var.domain_name} - Managed by Terraform"

  tags {
    Owner = "terraform"
  }
}
