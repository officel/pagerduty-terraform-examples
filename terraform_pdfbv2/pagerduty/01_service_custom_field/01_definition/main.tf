/**
 * サービスカスタムフィールド (Service Custom Field) を定義する例です。
 *
 * - https://support.pagerduty.com/main/lang-ja/docs/custom-fields-on-services
 * - https://registry.terraform.io/providers/PagerDuty/pagerduty/3.30.4/docs/resources/service_custom_field
 *
*/

resource "pagerduty_service_custom_field" "simple_string" {
  name         = "simple_string"
  display_name = "simple_string"
  data_type    = "string"
  field_type   = "single_value"
  description  = "シンプルな文字列"
}

# 他のタイプは別のファイルにまとめました
