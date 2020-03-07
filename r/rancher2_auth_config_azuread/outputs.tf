output "annotations" {
  description = "returns a map of string"
  value       = rancher2_auth_config_azuread.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_auth_config_azuread.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_auth_config_azuread.this.labels
}

output "name" {
  description = "returns a string"
  value       = rancher2_auth_config_azuread.this.name
}

output "type" {
  description = "returns a string"
  value       = rancher2_auth_config_azuread.this.type
}

output "this" {
  value = rancher2_auth_config_azuread.this
}

