variable "aws_region" {
  description = "The region to deploy this resource in"

  // Set since Route53 is global
  default = "eu-west-1"
}

variable "domain_name" {
  description = "The domain you wish to create a hosted zone for"
}
