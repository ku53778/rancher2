output "annotations" {
  description = "returns a map of string"
  value       = rancher2_role_template.this.annotations
}

output "builtin" {
  description = "returns a bool"
  value       = rancher2_role_template.this.builtin
}

output "description" {
  description = "returns a string"
  value       = rancher2_role_template.this.description
}

output "id" {
  description = "returns a string"
  value       = rancher2_role_template.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_role_template.this.labels
}

output "role_template_ids" {
  description = "returns a list of string"
  value       = rancher2_role_template.this.role_template_ids
}

output "this" {
  value = rancher2_role_template.this
}

