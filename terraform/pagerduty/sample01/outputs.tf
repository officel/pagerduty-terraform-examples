output "your_account" {
  description = "Your PagerDuty Account information."
  value       = data.pagerduty_user.u
}

output "your_id" {
  description = "Your PagerDuty Account ID."
  value       = data.pagerduty_user.u.id
}
