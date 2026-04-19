# サービスカスタムフィールドを設定

- メールアドレスでエスカレーションポリシーを新規作成します
- 作成したエスカレーションポリシーを登録するサービスを新規作成します
- 作成したサービスにカスタムフィールドを設定します

<!-- prettier-ignore-start -->
<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.0 |
| <a name="requirement_pagerduty"></a> [pagerduty](#requirement\_pagerduty) | >= 3.25.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_pagerduty"></a> [pagerduty](#provider\_pagerduty) | >= 3.25.0 |

## Resources

| Name | Type |
| ---- | ---- |
| [pagerduty_escalation_policy.this](https://registry.terraform.io/providers/PagerDuty/pagerduty/latest/docs/resources/escalation_policy) | resource |
| [pagerduty_service.this](https://registry.terraform.io/providers/PagerDuty/pagerduty/latest/docs/resources/service) | resource |
| [pagerduty_service_custom_field_value.this](https://registry.terraform.io/providers/PagerDuty/pagerduty/latest/docs/resources/service_custom_field_value) | resource |
| [pagerduty_service_custom_field.simple_string](https://registry.terraform.io/providers/PagerDuty/pagerduty/latest/docs/data-sources/service_custom_field) | data source |
| [pagerduty_user.this](https://registry.terraform.io/providers/PagerDuty/pagerduty/latest/docs/data-sources/user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_pagerduty_user_email"></a> [pagerduty\_user\_email](#input\_pagerduty\_user\_email) | Your PagerDuty Account E-Mail address. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Sample resources name | `string` | `"pdfbv2"` | no |

<!-- END_TF_DOCS -->
<!-- prettier-ignore-end -->
