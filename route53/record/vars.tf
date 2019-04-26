variable "zone_id" {
  description = "The zone ID you want to use for the record"
  type        = "string"
}

variable "name" {
  description = "The name of the record"
  type        = "string"
}

variable "type" {
  description = "A, TXT, CNAME dns types"
  type        = "string"
}

variable "ttl" {
  description = "The Time to live for the DNS Record"
  type        = "string"
}

variable "records" {
  description = "List of records"
  type        = "list"
}
