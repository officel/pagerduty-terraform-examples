# terraform/pagerduty/sample02

PagerDuty に登録されているアカウントを Terraform で管理するための準備を Terraform でやる。

apply して output をファイルに出力することで、環境を選ばずに対応できます。

<!-- prettier-ignore-start -->
<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.13 |
| <a name="requirement_pagerduty"></a> [pagerduty](#requirement\_pagerduty) | >= 3 |
| <a name="requirement_template"></a> [template](#requirement\_template) | >= 2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_pagerduty"></a> [pagerduty](#provider\_pagerduty) | >= 3 |
| <a name="provider_template"></a> [template](#provider\_template) | >= 2 |

## Resources

| Name | Type |
|------|------|
| [pagerduty_users.all](https://registry.terraform.io/providers/pagerduty/pagerduty/latest/docs/data-sources/users) | data source |
| [template_file.import_pagerduty_user](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |
| [template_file.resource_pagerduty_user](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_import_pagerduty_user"></a> [import\_pagerduty\_user](#output\_import\_pagerduty\_user) | terraform output -raw import\_pagerduty\_user > ../users/users\_import.tf |
| <a name="output_resource_pagerduty_user"></a> [resource\_pagerduty\_user](#output\_resource\_pagerduty\_user) | terraform output -raw resource\_pagerduty\_user > ../users/users.tf |

<!-- END_TF_DOCS -->
<!-- prettier-ignore-end -->
