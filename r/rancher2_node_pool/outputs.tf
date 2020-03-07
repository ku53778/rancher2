output "annotations" {
  description = "returns a map of string"
  value       = rancher2_node_pool.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_node_pool.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_node_pool.this.labels
}

output "this" {
  value = rancher2_node_pool.this
}

