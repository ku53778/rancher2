output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_project.this.annotations
}

output "container_resource_limit" {
  description = "returns a list of object"
  value       = data.rancher2_project.this.container_resource_limit
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_project.this.description
}

output "enable_project_monitoring" {
  description = "returns a bool"
  value       = data.rancher2_project.this.enable_project_monitoring
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_project.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_project.this.labels
}

output "pod_security_policy_template_id" {
  description = "returns a string"
  value       = data.rancher2_project.this.pod_security_policy_template_id
}

output "resource_quota" {
  description = "returns a list of object"
  value       = data.rancher2_project.this.resource_quota
}

output "uuid" {
  description = "returns a string"
  value       = data.rancher2_project.this.uuid
}

output "this" {
  value = rancher2_project.this
}

