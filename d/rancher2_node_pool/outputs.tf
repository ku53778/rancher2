output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_node_pool.this.annotations
}

output "control_plane" {
  description = "returns a bool"
  value       = data.rancher2_node_pool.this.control_plane
}

output "delete_not_ready_after_secs" {
  description = "returns a number"
  value       = data.rancher2_node_pool.this.delete_not_ready_after_secs
}

output "etcd" {
  description = "returns a bool"
  value       = data.rancher2_node_pool.this.etcd
}

output "hostname_prefix" {
  description = "returns a string"
  value       = data.rancher2_node_pool.this.hostname_prefix
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_node_pool.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_node_pool.this.labels
}

output "node_taints" {
  description = "returns a list of object"
  value       = data.rancher2_node_pool.this.node_taints
}

output "node_template_id" {
  description = "returns a string"
  value       = data.rancher2_node_pool.this.node_template_id
}

output "quantity" {
  description = "returns a number"
  value       = data.rancher2_node_pool.this.quantity
}

output "worker" {
  description = "returns a bool"
  value       = data.rancher2_node_pool.this.worker
}

output "this" {
  value = rancher2_node_pool.this
}

