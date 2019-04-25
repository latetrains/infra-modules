variable "aliases" {
  type        = "list"
  description = ""
}

variable "s3_origin_id" {
  type        = "string"
  description = ""
}

variable "s3_bucket_regional_domain_name" {
  type        = "string"
  description = ""
}

variable "price_class" {
  type        = "string"
  description = ""
  default     = "PriceClass_100"
}

variable "acm_cert_arn" {
  type        = "string"
  description = ""
}
