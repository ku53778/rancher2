output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_user.this.annotations
}

output "enabled" {
  description = "returns a bool"
  value       = data.rancher2_user.this.enabled
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_user.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_user.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.rancher2_user.this.name
}

output "principal_ids" {
  description = "returns a list of string"
  value       = data.rancher2_user.this.principal_ids
}

output "username" {
  description = "returns a string"
  value       = data.rancher2_user.this.username
}

output "this" {
  value = rancher2_user.this
}

