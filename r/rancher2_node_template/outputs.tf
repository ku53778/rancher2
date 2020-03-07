output "annotations" {
  description = "returns a map of string"
  value       = rancher2_node_template.this.annotations
}

output "driver" {
  description = "returns a string"
  value       = rancher2_node_template.this.driver
}

output "driver_id" {
  description = "returns a string"
  value       = rancher2_node_template.this.driver_id
}

output "id" {
  description = "returns a string"
  value       = rancher2_node_template.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_node_template.this.labels
}

output "this" {
  value = rancher2_node_template.this
}

