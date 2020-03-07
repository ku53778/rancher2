output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_project_alert_rule.this.annotations
}

output "group_id" {
  description = "returns a string"
  value       = data.rancher2_project_alert_rule.this.group_id
}

output "group_interval_seconds" {
  description = "returns a number"
  value       = data.rancher2_project_alert_rule.this.group_interval_seconds
}

output "group_wait_seconds" {
  description = "returns a number"
  value       = data.rancher2_project_alert_rule.this.group_wait_seconds
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_project_alert_rule.this.id
}

output "inherited" {
  description = "returns a bool"
  value       = data.rancher2_project_alert_rule.this.inherited
}

output "metric_rule" {
  description = "returns a list of object"
  value       = data.rancher2_project_alert_rule.this.metric_rule
}

output "pod_rule" {
  description = "returns a list of object"
  value       = data.rancher2_project_alert_rule.this.pod_rule
}

output "repeat_interval_seconds" {
  description = "returns a number"
  value       = data.rancher2_project_alert_rule.this.repeat_interval_seconds
}

output "severity" {
  description = "returns a string"
  value       = data.rancher2_project_alert_rule.this.severity
}

output "workload_rule" {
  description = "returns a list of object"
  value       = data.rancher2_project_alert_rule.this.workload_rule
}

output "this" {
  value = rancher2_project_alert_rule.this
}

