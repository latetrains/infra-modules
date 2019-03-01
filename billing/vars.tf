variable "aws_region" {
  description = "The region to deploy this resource in"

  // Set since Billing is global
  default = "eu-west-1"
}

variable "monthly_budget_amount" {
  description = "The amount to budget per month in USD"
}

variable "budget_name" {
  description = "The name of the budget"
}
