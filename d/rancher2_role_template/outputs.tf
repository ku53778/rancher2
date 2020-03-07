output "administrative" {
  description = "returns a bool"
  value       = data.rancher2_role_template.this.administrative
}

output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_role_template.this.annotations
}

output "builtin" {
  description = "returns a bool"
  value       = data.rancher2_role_template.this.builtin
}

output "context" {
  description = "returns a string"
  value       = data.rancher2_role_template.this.context
}

output "default_role" {
  description = "returns a bool"
  value       = data.rancher2_role_template.this.default_role
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_role_template.this.description
}

output "external" {
  description = "returns a bool"
  value       = data.rancher2_role_template.this.external
}

output "hidden" {
  description = "returns a bool"
  value       = data.rancher2_role_template.this.hidden
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_role_template.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_role_template.this.labels
}

output "locked" {
  description = "returns a bool"
  value       = data.rancher2_role_template.this.locked
}

output "role_template_ids" {
  description = "returns a list of string"
  value       = data.rancher2_role_template.this.role_template_ids
}

output "rules" {
  description = "returns a list of object"
  value       = data.rancher2_role_template.this.rules
}

output "this" {
  value = rancher2_role_template.this
}

