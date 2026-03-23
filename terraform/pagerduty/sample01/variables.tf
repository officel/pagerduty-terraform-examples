variable "email" {
  description = "Your PagerDuty e-mail address."
  type        = string

  validation {
    error_message = "Correct email address is required."
    condition     = can(regex("@", var.email))
  }
}
