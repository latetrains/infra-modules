variable "zone_id" {
  description = "The zone ID you want to use for the record"
}

variable "name" {
  description = "The name of the record"
}

variable "type" {
  description = "A, TXT, CNAME dns types"
}

variable "ttl" {
  description = "The Time to live for the DNS Record"
}

variable "records" {
  description = "List of records"
}
