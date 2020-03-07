output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_secret.this.annotations
}

output "data" {
  description = "returns a map of string"
  value       = data.rancher2_secret.this.data
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_secret.this.description
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_secret.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_secret.this.labels
}

output "this" {
  value = rancher2_secret.this
}

