output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_namespace.this.annotations
}

output "container_resource_limit" {
  description = "returns a list of object"
  value       = data.rancher2_namespace.this.container_resource_limit
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_namespace.this.description
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_namespace.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_namespace.this.labels
}

output "resource_quota" {
  description = "returns a list of object"
  value       = data.rancher2_namespace.this.resource_quota
}

output "this" {
  value = rancher2_namespace.this
}

