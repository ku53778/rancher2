output "annotations" {
  description = "returns a map of string"
  value       = rancher2_cluster_alert_group.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_cluster_alert_group.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_cluster_alert_group.this.labels
}

output "this" {
  value = rancher2_cluster_alert_group.this
}

