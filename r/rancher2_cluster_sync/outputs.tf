output "default_project_id" {
  description = "returns a string"
  value       = rancher2_cluster_sync.this.default_project_id
}

output "id" {
  description = "returns a string"
  value       = rancher2_cluster_sync.this.id
}

output "kube_config" {
  description = "returns a string"
  value       = rancher2_cluster_sync.this.kube_config
  sensitive   = true
}

output "system_project_id" {
  description = "returns a string"
  value       = rancher2_cluster_sync.this.system_project_id
}

output "this" {
  value = rancher2_cluster_sync.this
}

