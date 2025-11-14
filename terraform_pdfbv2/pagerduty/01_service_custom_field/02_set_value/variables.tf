variable "name" {
  # PagerDuty Fan Book Vol 2 向けにサービス類を構築するので名前をつけられるようにします
  description = "Sample resources name"
  type        = string
  default     = "pdfbv2"
}

variable "pagerduty_user_email" {
  description = "Your PagerDuty Account E-Mail address."
  type        = string
}
