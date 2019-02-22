variable "aws_region" {
  description = "The region to deploy this resource in"
  type = "string"
}

variable "build_name" {
  description = "The name for the build"
  type = "string"
}

variable "build_description" {
  description = "Description for the build pipeline"
  type = "string"
}

variable "build_timeout" {
  description = "Timeout for the Build"
  type = "string"
  default = "5"
}

variable "role_name" {
  description = "The name for the role for the build pipeline"
  type = "string"
}

variable "role_actions" {
  description = "List of Actions that the IAM role can perform"
  type = "list"
}

variable "role_resources" {
  description = "List of resources that the IAM role can access"
  type = "list"
}

variable "github_repository" {
  description = "The github repository to build from"
  type = "string"
}