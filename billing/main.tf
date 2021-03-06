resource "aws_budgets_budget" "monthly_budget" {
  name              = "${var.budget_name}"
  budget_type       = "COST"
  limit_amount      = "${var.monthly_budget_amount}"
  limit_unit        = "USD"
  time_period_end   = "2087-06-15_00:00"
  time_period_start = "2019-01-01_00:00"
  time_unit         = "MONTHLY"

  notification {
    comparison_operator = "GREATER_THAN"
    threshold = "${var.notification_threshold}"
    threshold_type = "PERCENTAGE"
    notification_type = "FORECASTED"
    subscriber_email_addresses = ["${var.notification_email}"]
  }

}
