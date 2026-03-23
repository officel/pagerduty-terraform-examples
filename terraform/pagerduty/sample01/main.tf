/**
 * # sample01
 *
 * PagerDuty を Terraform で管理するための動作確認をおこなう。
 */

data "pagerduty_user" "u" {
  email = var.email
}
