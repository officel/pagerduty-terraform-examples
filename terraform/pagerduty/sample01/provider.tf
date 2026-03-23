terraform {
  required_version = ">= 1.13"
  required_providers {
    pagerduty = {
      source  = "pagerduty/pagerduty"
      version = ">= 3"
    }
  }
}
