output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_notifier.this.annotations
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_notifier.this.description
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_notifier.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_notifier.this.labels
}

output "pagerduty_config" {
  description = "returns a list of object"
  value       = data.rancher2_notifier.this.pagerduty_config
}

output "slack_config" {
  description = "returns a list of object"
  value       = data.rancher2_notifier.this.slack_config
}

output "smtp_config" {
  description = "returns a list of object"
  value       = data.rancher2_notifier.this.smtp_config
}

output "webhook_config" {
  description = "returns a list of object"
  value       = data.rancher2_notifier.this.webhook_config
}

output "wechat_config" {
  description = "returns a list of object"
  value       = data.rancher2_notifier.this.wechat_config
}

output "this" {
  value = rancher2_notifier.this
}

