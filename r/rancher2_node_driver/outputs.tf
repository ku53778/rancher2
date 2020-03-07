output "annotations" {
  description = "returns a map of string"
  value       = rancher2_node_driver.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_node_driver.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_node_driver.this.labels
}

output "this" {
  value = rancher2_node_driver.this
}

