variable "email" {
  description = "Your PagerDuty e-mail address."
  type        = string

  validation {
    error_message = "Correct email address is required."
    condition     = can(regex("@", var.email))
  }
}

data "pagerduty_user" "u" {
  email = var.email
}

output "your_account" {
  description = "Your PagerDuty Account information."
  value       = data.pagerduty_user.u
}

output "your_id" {
  description = "Your PagerDuty Account ID."
  value       = data.pagerduty_user.u.id
}
