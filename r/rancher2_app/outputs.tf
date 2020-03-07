output "annotations" {
  description = "returns a map of string"
  value       = rancher2_app.this.annotations
}

output "description" {
  description = "returns a string"
  value       = rancher2_app.this.description
}

output "external_id" {
  description = "returns a string"
  value       = rancher2_app.this.external_id
}

output "id" {
  description = "returns a string"
  value       = rancher2_app.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_app.this.labels
}

output "revision_id" {
  description = "returns a string"
  value       = rancher2_app.this.revision_id
}

output "template_version" {
  description = "returns a string"
  value       = rancher2_app.this.template_version
}

output "this" {
  value = rancher2_app.this
}

