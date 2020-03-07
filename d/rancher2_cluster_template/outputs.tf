output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_cluster_template.this.annotations
}

output "default_revision_id" {
  description = "returns a string"
  value       = data.rancher2_cluster_template.this.default_revision_id
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_cluster_template.this.description
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_cluster_template.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_cluster_template.this.labels
}

output "members" {
  description = "returns a list of object"
  value       = data.rancher2_cluster_template.this.members
}

output "template_revisions" {
  description = "returns a list of object"
  value       = data.rancher2_cluster_template.this.template_revisions
}

output "this" {
  value = rancher2_cluster_template.this
}

