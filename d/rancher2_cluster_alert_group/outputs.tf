output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_cluster_alert_group.this.annotations
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_cluster_alert_group.this.description
}

output "group_interval_seconds" {
  description = "returns a number"
  value       = data.rancher2_cluster_alert_group.this.group_interval_seconds
}

output "group_wait_seconds" {
  description = "returns a number"
  value       = data.rancher2_cluster_alert_group.this.group_wait_seconds
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_cluster_alert_group.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_cluster_alert_group.this.labels
}

output "recipients" {
  description = "returns a list of object"
  value       = data.rancher2_cluster_alert_group.this.recipients
}

output "repeat_interval_seconds" {
  description = "returns a number"
  value       = data.rancher2_cluster_alert_group.this.repeat_interval_seconds
}

output "this" {
  value = rancher2_cluster_alert_group.this
}

