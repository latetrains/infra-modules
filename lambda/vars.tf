variable "aws_region" {
  description = "The region to deploy this resource in"
  type        = "string"
}

variable "function_name" {
  description = "The lambda function name"
  type        = "string"
}

variable "function_runtime" {
  description = "The runtime for the lambda function"
  type        = "string"
}

variable "function_handler" {
  description = "Path to the handler function"
  type        = "string"
}

variable "role_name" {
  description = "The name for the role for the lambda function"
  type        = "string"
}

variable "role_resources" {
  description = ""
  type        = "list"
}

variable "role_actions" {
  description = ""
  type        = "list"
}

variable "environment_variables" {
  description = ""
  default     = {}
  type        = "map"
}
