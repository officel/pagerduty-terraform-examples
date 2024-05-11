data "pagerduty_users" "all" {}

# user データは全て terraform で扱うキーには不適
# - name は自由に変更できるので文字種に問題が出る（スペース、大文字小文字、記号など）
# - email は @ があり冗長。
# - id はランダムなユニークキーで個人の特定が困難（可読性が悪い）
# なので email のアカウント部分を抽出してキーにする（@から後ろを取り除く）

locals {
  # user 毎に email から @ 以降を削除して alias として追加する
  users_all = [
    for i in data.pagerduty_users.all.users :
    merge(i, { alias = replace(i.email, "/@.*$/", "") })
  ]
}

# ユーザ情報を管理するファイルを生成する
# resource "pagerduty_user" "xxxx" {} を生成する
data "template_file" "resource_pagerduty_user" {
  for_each = {
    for index, i in local.users_all : i.alias => i
  }

  template = <<-EOT
  resource "pagerduty_user" "${each.value.alias}" {
    name  = "${each.value.name}"
    email = "${each.value.email}"
  }
  EOT
}

output "resource_pagerduty_user" {
  description = "terraform output -raw resource_pagerduty_user > ../users/users.tf"
  value       = tostring(join("\n", toset(values(data.template_file.resource_pagerduty_user)[*].rendered)))
}


# import block も作る
data "template_file" "import_pagerduty_user" {
  for_each = {
    for index, i in local.users_all : i.alias => i
  }

  template = <<-EOT
  import {
    to = pagerduty_user.${each.value.alias}
    id = "${each.value.id}"
  }
  EOT
}

output "import_pagerduty_user" {
  description = "terraform output -raw import_pagerduty_user > ../users/users_import.tf"
  value       = tostring(join("\n", toset(values(data.template_file.import_pagerduty_user)[*].rendered)))
}
