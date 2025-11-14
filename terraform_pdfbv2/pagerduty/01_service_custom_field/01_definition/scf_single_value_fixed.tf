# tflint-ignore: terraform_standard_module_structure
variable "single_value_fixed_values" {
  description = "固定値の単一選択フィールドの選択可能な値"
  type        = list(string)
  default = [
    "production",
    "staging",
    "development"
  ]
}

resource "pagerduty_service_custom_field" "single_value_fixed" {
  name         = "single_value_fixed"
  display_name = "single_value_fixed"
  data_type    = "string"
  field_type   = "single_value_fixed"
  description  = "固定値の単一選択"

  dynamic "field_option" {
    for_each = var.single_value_fixed_values
    content {
      value     = field_option.value
      data_type = "string"
    }
  }
}
