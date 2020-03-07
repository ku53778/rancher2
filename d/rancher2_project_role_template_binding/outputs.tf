output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_project_role_template_binding.this.annotations
}

output "group_id" {
  description = "returns a string"
  value       = data.rancher2_project_role_template_binding.this.group_id
}

output "group_principal_id" {
  description = "returns a string"
  value       = data.rancher2_project_role_template_binding.this.group_principal_id
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_project_role_template_binding.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_project_role_template_binding.this.labels
}

output "role_template_id" {
  description = "returns a string"
  value       = data.rancher2_project_role_template_binding.this.role_template_id
}

output "user_id" {
  description = "returns a string"
  value       = data.rancher2_project_role_template_binding.this.user_id
}

output "user_principal_id" {
  description = "returns a string"
  value       = data.rancher2_project_role_template_binding.this.user_principal_id
}

output "this" {
  value = rancher2_project_role_template_binding.this
}

