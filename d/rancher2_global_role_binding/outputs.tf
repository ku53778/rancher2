output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_global_role_binding.this.annotations
}

output "global_role_id" {
  description = "returns a string"
  value       = data.rancher2_global_role_binding.this.global_role_id
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_global_role_binding.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_global_role_binding.this.labels
}

output "user_id" {
  description = "returns a string"
  value       = data.rancher2_global_role_binding.this.user_id
}

output "this" {
  value = rancher2_global_role_binding.this
}

