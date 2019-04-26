variable "domain_name" {
  description = "The domain for the certificate"
}

variable "private_zone" {
  description = "Whether the hosted zone is in a private zone - Defaults to false"
  default     = false
}
