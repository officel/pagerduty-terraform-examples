terraform {
  required_version = ">= 1.13"
  required_providers {
    pagerduty = {
      source  = "pagerduty/pagerduty"
      version = ">= 3"
    }
    template = {
      source  = "hashicorp/template"
      version = ">= 2"
    }
  }
}
