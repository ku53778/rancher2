output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_cluster_logging.this.annotations
}

output "elasticsearch_config" {
  description = "returns a list of object"
  value       = data.rancher2_cluster_logging.this.elasticsearch_config
}

output "fluentd_config" {
  description = "returns a list of object"
  value       = data.rancher2_cluster_logging.this.fluentd_config
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_cluster_logging.this.id
}

output "kafka_config" {
  description = "returns a list of object"
  value       = data.rancher2_cluster_logging.this.kafka_config
}

output "kind" {
  description = "returns a string"
  value       = data.rancher2_cluster_logging.this.kind
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_cluster_logging.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.rancher2_cluster_logging.this.name
}

output "namespace_id" {
  description = "returns a string"
  value       = data.rancher2_cluster_logging.this.namespace_id
}

output "output_flush_interval" {
  description = "returns a number"
  value       = data.rancher2_cluster_logging.this.output_flush_interval
}

output "output_tags" {
  description = "returns a map of string"
  value       = data.rancher2_cluster_logging.this.output_tags
}

output "splunk_config" {
  description = "returns a list of object"
  value       = data.rancher2_cluster_logging.this.splunk_config
}

output "syslog_config" {
  description = "returns a list of object"
  value       = data.rancher2_cluster_logging.this.syslog_config
}

output "this" {
  value = rancher2_cluster_logging.this
}

