output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_registry.this.annotations
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_registry.this.description
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_registry.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_registry.this.labels
}

output "registries" {
  description = "returns a list of object"
  value       = data.rancher2_registry.this.registries
}

output "this" {
  value = rancher2_registry.this
}

