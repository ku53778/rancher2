output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_app.this.annotations
}

output "answers" {
  description = "returns a map of string"
  value       = data.rancher2_app.this.answers
}

output "catalog_name" {
  description = "returns a string"
  value       = data.rancher2_app.this.catalog_name
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_app.this.description
}

output "external_id" {
  description = "returns a string"
  value       = data.rancher2_app.this.external_id
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_app.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_app.this.labels
}

output "revision_id" {
  description = "returns a string"
  value       = data.rancher2_app.this.revision_id
}

output "target_namespace" {
  description = "returns a string"
  value       = data.rancher2_app.this.target_namespace
}

output "template_name" {
  description = "returns a string"
  value       = data.rancher2_app.this.template_name
}

output "template_version" {
  description = "returns a string"
  value       = data.rancher2_app.this.template_version
}

output "values_yaml" {
  description = "returns a string"
  value       = data.rancher2_app.this.values_yaml
}

output "this" {
  value = rancher2_app.this
}

