output "annotations" {
  description = "returns a map of string"
  value       = rancher2_multi_cluster_app.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_multi_cluster_app.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_multi_cluster_app.this.labels
}

output "revision_id" {
  description = "returns a string"
  value       = rancher2_multi_cluster_app.this.revision_id
}

output "template_version" {
  description = "returns a string"
  value       = rancher2_multi_cluster_app.this.template_version
}

output "template_version_id" {
  description = "returns a string"
  value       = rancher2_multi_cluster_app.this.template_version_id
}

output "this" {
  value = rancher2_multi_cluster_app.this
}

