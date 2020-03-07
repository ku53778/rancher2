output "annotations" {
  description = "returns a map of string"
  value       = rancher2_user.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_user.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_user.this.labels
}

output "principal_ids" {
  description = "returns a list of string"
  value       = rancher2_user.this.principal_ids
}

output "this" {
  value = rancher2_user.this
}

