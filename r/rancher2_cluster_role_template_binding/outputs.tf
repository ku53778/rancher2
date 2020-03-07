output "annotations" {
  description = "returns a map of string"
  value       = rancher2_cluster_role_template_binding.this.annotations
}

output "group_principal_id" {
  description = "returns a string"
  value       = rancher2_cluster_role_template_binding.this.group_principal_id
}

output "id" {
  description = "returns a string"
  value       = rancher2_cluster_role_template_binding.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_cluster_role_template_binding.this.labels
}

output "user_principal_id" {
  description = "returns a string"
  value       = rancher2_cluster_role_template_binding.this.user_principal_id
}

output "this" {
  value = rancher2_cluster_role_template_binding.this
}

