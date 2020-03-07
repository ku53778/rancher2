output "annotations" {
  description = "returns a map of string"
  value       = rancher2_cluster_template.this.annotations
}

output "default_revision_id" {
  description = "returns a string"
  value       = rancher2_cluster_template.this.default_revision_id
}

output "id" {
  description = "returns a string"
  value       = rancher2_cluster_template.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_cluster_template.this.labels
}

output "this" {
  value = rancher2_cluster_template.this
}

