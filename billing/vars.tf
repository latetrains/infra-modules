variable "monthly_budget_amount" {
  description = "The amount to budget per month in USD"
}

variable "budget_name" {
  description = "The name of the budget"
}

variable "notification_threshold" {
  description = "The percent threshold to send a notifcation"
  default     = 50
}

variable "notification_email" {
  description = "A email address to send the notification to"
}
