output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_multi_cluster_app.this.annotations
}

output "answers" {
  description = "returns a list of object"
  value       = data.rancher2_multi_cluster_app.this.answers
}

output "catalog_name" {
  description = "returns a string"
  value       = data.rancher2_multi_cluster_app.this.catalog_name
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_multi_cluster_app.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_multi_cluster_app.this.labels
}

output "members" {
  description = "returns a list of object"
  value       = data.rancher2_multi_cluster_app.this.members
}

output "revision_history_limit" {
  description = "returns a number"
  value       = data.rancher2_multi_cluster_app.this.revision_history_limit
}

output "revision_id" {
  description = "returns a string"
  value       = data.rancher2_multi_cluster_app.this.revision_id
}

output "roles" {
  description = "returns a list of string"
  value       = data.rancher2_multi_cluster_app.this.roles
}

output "targets" {
  description = "returns a list of object"
  value       = data.rancher2_multi_cluster_app.this.targets
}

output "template_name" {
  description = "returns a string"
  value       = data.rancher2_multi_cluster_app.this.template_name
}

output "template_version" {
  description = "returns a string"
  value       = data.rancher2_multi_cluster_app.this.template_version
}

output "template_version_id" {
  description = "returns a string"
  value       = data.rancher2_multi_cluster_app.this.template_version_id
}

output "upgrade_strategy" {
  description = "returns a list of object"
  value       = data.rancher2_multi_cluster_app.this.upgrade_strategy
}

output "this" {
  value = rancher2_multi_cluster_app.this
}

