terraform {
  required_version = ">= 1.10.0"
  required_providers {
    pagerduty = {
      source  = "PagerDuty/pagerduty"
      version = ">= 3.25.0"
      # https://github.com/PagerDuty/terraform-provider-pagerduty/releases/tag/v3.25.0
      # サービスカスタムフィールドを最初にサポートしたバージョンです
    }
  }
}

