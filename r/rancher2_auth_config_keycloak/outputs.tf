output "annotations" {
  description = "returns a map of string"
  value       = rancher2_auth_config_keycloak.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_auth_config_keycloak.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_auth_config_keycloak.this.labels
}

output "name" {
  description = "returns a string"
  value       = rancher2_auth_config_keycloak.this.name
}

output "type" {
  description = "returns a string"
  value       = rancher2_auth_config_keycloak.this.type
}

output "this" {
  value = rancher2_auth_config_keycloak.this
}

