provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {}
}

resource "aws_budgets_budget" "monthly_budget" {
  name = "Monthly Buget"
  budget_type = "COST"
  limit_amount = "${var.monthly_budget_amount}"
  limit_unit = "USD"
  time_period_end = "2087-06-15_00:00"
  time_period_start = "2019-01-01_00:00"
  time_unit = "MONTHLY"
}