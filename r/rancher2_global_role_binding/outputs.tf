output "annotations" {
  description = "returns a map of string"
  value       = rancher2_global_role_binding.this.annotations
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

output "this" {
  value = rancher2_global_role_binding.this
}

