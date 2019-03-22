variable "bucket_name" {
  description = "The Bucket name must match the website URL"
  type        = "string"
}

variable "index_document" {
  description = "The index.html filename"
  type        = "string"
  default     = "index.html"
}

variable "error_document" {
  description = "The error.html filename"
  type        = "string"
  default     = "error.html"
}

variable "region" {
  description = "The region for the bucket"
  type        = "string"
}
