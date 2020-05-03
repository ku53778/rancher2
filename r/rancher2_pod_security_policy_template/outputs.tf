output "allow_privilege_escalation" {
  description = "returns a bool"
  value       = rancher2_pod_security_policy_template.this.allow_privilege_escalation
}

output "annotations" {
  description = "returns a map of string"
  value       = rancher2_pod_security_policy_template.this.annotations
}

output "description" {
  description = "returns a string"
  value       = rancher2_pod_security_policy_template.this.description
}

output "host_ipc" {
  description = "returns a bool"
  value       = rancher2_pod_security_policy_template.this.host_ipc
}

output "host_network" {
  description = "returns a bool"
  value       = rancher2_pod_security_policy_template.this.host_network
}

output "host_pid" {
  description = "returns a bool"
  value       = rancher2_pod_security_policy_template.this.host_pid
}

output "id" {
  description = "returns a string"
  value       = rancher2_pod_security_policy_template.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_pod_security_policy_template.this.labels
}

output "privileged" {
  description = "returns a bool"
  value       = rancher2_pod_security_policy_template.this.privileged
}

output "read_only_root_filesystem" {
  description = "returns a bool"
  value       = rancher2_pod_security_policy_template.this.read_only_root_filesystem
}

output "volumes" {
  description = "returns a list of string"
  value       = rancher2_pod_security_policy_template.this.volumes
}

output "this" {
  value = rancher2_pod_security_policy_template.this
}

