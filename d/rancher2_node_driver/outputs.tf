output "active" {
  description = "returns a bool"
  value       = data.rancher2_node_driver.this.active
}

output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_node_driver.this.annotations
}

output "builtin" {
  description = "returns a bool"
  value       = data.rancher2_node_driver.this.builtin
}

output "checksum" {
  description = "returns a string"
  value       = data.rancher2_node_driver.this.checksum
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_node_driver.this.description
}

output "external_id" {
  description = "returns a string"
  value       = data.rancher2_node_driver.this.external_id
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_node_driver.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_node_driver.this.labels
}

output "ui_url" {
  description = "returns a string"
  value       = data.rancher2_node_driver.this.ui_url
}

output "url" {
  description = "returns a string"
  value       = data.rancher2_node_driver.this.url
}

output "whitelist_domains" {
  description = "returns a list of string"
  value       = data.rancher2_node_driver.this.whitelist_domains
}

output "this" {
  value = rancher2_node_driver.this
}

