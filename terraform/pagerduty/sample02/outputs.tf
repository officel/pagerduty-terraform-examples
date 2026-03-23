output "resource_pagerduty_user" {
  description = "terraform output -raw resource_pagerduty_user > ../users/users.tf"
  value       = tostring(join("\n", toset(values(data.template_file.resource_pagerduty_user)[*].rendered)))
}

output "import_pagerduty_user" {
  description = "terraform output -raw import_pagerduty_user > ../users/users_import.tf"
  value       = tostring(join("\n", toset(values(data.template_file.import_pagerduty_user)[*].rendered)))
}
