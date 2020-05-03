output "annotations" {
  description = "returns a map of string"
  value       = rancher2_catalog.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_catalog.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_catalog.this.labels
}

output "version" {
  description = "returns a string"
  value       = rancher2_catalog.this.version
}

output "this" {
  value = rancher2_catalog.this
}

