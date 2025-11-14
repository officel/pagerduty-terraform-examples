data "pagerduty_user" "this" {
  email = var.pagerduty_user_email
}

data "pagerduty_service_custom_field" "simple_string" {
  display_name = "simple_string"
}

resource "pagerduty_escalation_policy" "this" {
  name        = "${var.name}-escalation-policy"
  description = "PagerDuty Fan Book Vol 2 Escalation Policy"
  num_loops   = 2
  rule {
    escalation_delay_in_minutes = 5
    target {
      type = "user_reference"
      id   = data.pagerduty_user.this.id
    }
  }
}

resource "pagerduty_service" "this" {
  name              = "${var.name}-service"
  description       = "PagerDuty Fan Book Vol 2 Service"
  escalation_policy = pagerduty_escalation_policy.this.id
}

resource "pagerduty_service_custom_field_value" "this" {
  service_id = pagerduty_service.this.id

  custom_fields {
    name  = data.pagerduty_service_custom_field.simple_string.name
    value = jsonencode(var.name)
  }
}
