variable "aliases" {
  type        = "list"
  description = "A list of CNAMEs to be used with the Distribution"
}

variable "s3_origin_id" {
  type        = "string"
  description = ""
}

variable "s3_bucket_regional_domain_name" {
  type        = "string"
  description = "The regional domain for the S3 website"
}

variable "price_class" {
  type        = "string"
  description = "Price class of the Distribution - Defaults to cheapest"
  default     = "PriceClass_100"
}

variable "acm_cert_arn" {
  type        = "string"
  description = "The ARN for the SSL Certificate located in Virginia Region"
}

variable "enabled" {
  type        = "string"
  description = "Whether the distribution should be enabled"
  default     = true
}
