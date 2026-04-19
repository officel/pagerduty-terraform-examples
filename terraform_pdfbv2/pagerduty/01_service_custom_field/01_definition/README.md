# サービスカスタムフィールドを定義

<!-- prettier-ignore-start -->
<!-- BEGIN_TF_DOCS -->

サービスカスタムフィールド (Service Custom Field) を定義する例です。

- https://support.pagerduty.com/main/lang-ja/docs/custom-fields-on-services
- https://registry.terraform.io/providers/PagerDuty/pagerduty/3.30.4/docs/resources/service_custom_field

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
| [pagerduty_service_custom_field.simple_string](https://registry.terraform.io/providers/PagerDuty/pagerduty/latest/docs/resources/service_custom_field) | resource |
| [pagerduty_service_custom_field.single_value_fixed](https://registry.terraform.io/providers/PagerDuty/pagerduty/latest/docs/resources/service_custom_field) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_single_value_fixed_values"></a> [single\_value\_fixed\_values](#input\_single\_value\_fixed\_values) | 固定値の単一選択フィールドの選択可能な値 | `list(string)` | <pre>[<br/>  "production",<br/>  "staging",<br/>  "development"<br/>]</pre> | no |

<!-- END_TF_DOCS -->
<!-- prettier-ignore-end -->
