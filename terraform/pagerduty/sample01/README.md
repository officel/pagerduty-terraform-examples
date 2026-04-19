<!-- prettier-ignore-start -->
<!-- BEGIN_TF_DOCS -->

# sample01

PagerDuty を Terraform で管理するための動作確認をおこなう。

## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.13 |
| <a name="requirement_pagerduty"></a> [pagerduty](#requirement\_pagerduty) | >= 3 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_pagerduty"></a> [pagerduty](#provider\_pagerduty) | >= 3 |

## Resources

| Name | Type |
| ---- | ---- |
| [pagerduty_user.u](https://registry.terraform.io/providers/pagerduty/pagerduty/latest/docs/data-sources/user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_email"></a> [email](#input\_email) | Your PagerDuty e-mail address. | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_your_account"></a> [your\_account](#output\_your\_account) | Your PagerDuty Account information. |
| <a name="output_your_id"></a> [your\_id](#output\_your\_id) | Your PagerDuty Account ID. |

<!-- END_TF_DOCS -->
<!-- prettier-ignore-end -->
