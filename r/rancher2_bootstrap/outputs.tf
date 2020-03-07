output "current_password" {
  description = "returns a string"
  value       = rancher2_bootstrap.this.current_password
  sensitive   = true
}

output "id" {
  description = "returns a string"
  value       = rancher2_bootstrap.this.id
}

output "password" {
  description = "returns a string"
  value       = rancher2_bootstrap.this.password
  sensitive   = true
}

output "temp_token" {
  description = "returns a string"
  value       = rancher2_bootstrap.this.temp_token
  sensitive   = true
}

output "temp_token_id" {
  description = "returns a string"
  value       = rancher2_bootstrap.this.temp_token_id
}

output "token" {
  description = "returns a string"
  value       = rancher2_bootstrap.this.token
  sensitive   = true
}

output "token_id" {
  description = "returns a string"
  value       = rancher2_bootstrap.this.token_id
}

output "url" {
  description = "returns a string"
  value       = rancher2_bootstrap.this.url
}

output "user" {
  description = "returns a string"
  value       = rancher2_bootstrap.this.user
}

output "this" {
  value = rancher2_bootstrap.this
}

