output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_catalog.this.annotations
}

output "branch" {
  description = "returns a string"
  value       = data.rancher2_catalog.this.branch
}

output "cluster_id" {
  description = "returns a string"
  value       = data.rancher2_catalog.this.cluster_id
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_catalog.this.description
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_catalog.this.id
}

output "kind" {
  description = "returns a string"
  value       = data.rancher2_catalog.this.kind
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_catalog.this.labels
}

output "password" {
  description = "returns a string"
  value       = data.rancher2_catalog.this.password
  sensitive   = true
}

output "project_id" {
  description = "returns a string"
  value       = data.rancher2_catalog.this.project_id
}

output "url" {
  description = "returns a string"
  value       = data.rancher2_catalog.this.url
}

output "username" {
  description = "returns a string"
  value       = data.rancher2_catalog.this.username
  sensitive   = true
}

output "version" {
  description = "returns a string"
  value       = data.rancher2_catalog.this.version
}

output "this" {
  value = rancher2_catalog.this
}

