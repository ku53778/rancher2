output "annotations" {
  description = "returns a map of string"
  value       = rancher2_global_role_binding.this.annotations
}

output "group_principal_id" {
  description = "returns a string"
  value       = rancher2_global_role_binding.this.group_principal_id
}

output "id" {
  description = "returns a string"
  value       = rancher2_global_role_binding.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_global_role_binding.this.labels
}

output "name" {
  description = "returns a string"
  value       = rancher2_global_role_binding.this.name
}

output "user_id" {
  description = "returns a string"
  value       = rancher2_global_role_binding.this.user_id
}

output "this" {
  value = rancher2_global_role_binding.this
}

