output "access_key" {
  description = "returns a string"
  value       = rancher2_token.this.access_key
}

output "annotations" {
  description = "returns a map of string"
  value       = rancher2_token.this.annotations
}

output "enabled" {
  description = "returns a bool"
  value       = rancher2_token.this.enabled
}

output "expired" {
  description = "returns a bool"
  value       = rancher2_token.this.expired
}

output "id" {
  description = "returns a string"
  value       = rancher2_token.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_token.this.labels
}

output "name" {
  description = "returns a string"
  value       = rancher2_token.this.name
}

output "secret_key" {
  description = "returns a string"
  value       = rancher2_token.this.secret_key
  sensitive   = true
}

output "token" {
  description = "returns a string"
  value       = rancher2_token.this.token
  sensitive   = true
}

output "user_id" {
  description = "returns a string"
  value       = rancher2_token.this.user_id
}

output "this" {
  value = rancher2_token.this
}

