variable "zone_id" {
  description = "The zone ID you want to use for the record"
  type        = "string"
}

variable "name" {
  description = "The name of the record"
  type        = "string"
}

variable "hosted_zone_id" {
  description = "The name of the record"
  type        = "string"
}

variable "dns_name" {
  description = "The DNS nmame for the alias record"
  type        = "string"
}
