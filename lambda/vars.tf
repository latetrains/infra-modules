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
  description = "A list of resources this Lambda function has access to"
  type        = "list"
  default     = []
}

variable "role_actions" {
  description = "A list of actions that this Lambda function can perform"
  type        = "list"
  default     = []
}

variable "environment_variables" {
  description = "A map of environment variables to be used in the function"
  type        = "map"
  default     = {}
}
