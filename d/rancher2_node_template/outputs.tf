output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_node_template.this.annotations
}

output "cloud_credential_id" {
  description = "returns a string"
  value       = data.rancher2_node_template.this.cloud_credential_id
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_node_template.this.description
}

output "driver" {
  description = "returns a string"
  value       = data.rancher2_node_template.this.driver
}

output "engine_env" {
  description = "returns a map of string"
  value       = data.rancher2_node_template.this.engine_env
}

output "engine_insecure_registry" {
  description = "returns a list of string"
  value       = data.rancher2_node_template.this.engine_insecure_registry
}

output "engine_install_url" {
  description = "returns a string"
  value       = data.rancher2_node_template.this.engine_install_url
}

output "engine_label" {
  description = "returns a map of string"
  value       = data.rancher2_node_template.this.engine_label
}

output "engine_opt" {
  description = "returns a map of string"
  value       = data.rancher2_node_template.this.engine_opt
}

output "engine_registry_mirror" {
  description = "returns a list of string"
  value       = data.rancher2_node_template.this.engine_registry_mirror
}

output "engine_storage_driver" {
  description = "returns a string"
  value       = data.rancher2_node_template.this.engine_storage_driver
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_node_template.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_node_template.this.labels
}

output "this" {
  value = rancher2_node_template.this
}

