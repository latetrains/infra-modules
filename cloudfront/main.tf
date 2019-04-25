resource "aws_cloudfront_distribution" "s3_distribution" {
  origin {
    domain_name = "${var.s3_bucket_regional_domain_name}"
    origin_id   = "${var.s3_origin_id}"
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = ""
  default_root_object = "index.html"

  aliases = "${var.aliases}"

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
      "OPTIONS",
    ]

    cached_methods = [
      "GET",
      "HEAD",
    ]

    target_origin_id = "${var.s3_origin_id}"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  price_class = "${var.price_class}"

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"

      locations = [
        "GB",
      ]
    }
  }

  tags = {
    Owner = "terraform"
  }

  viewer_certificate {
    acm_certificate_arn      = "${var.acm_cert_arn}"
    minimum_protocol_version = "TLSv1.1_2016"
    ssl_support_method       = "sni-only"
  }
}
