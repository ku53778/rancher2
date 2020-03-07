output "annotations" {
  description = "returns a map of string"
  value       = rancher2_cluster.this.annotations
}

output "cluster_registration_token" {
  description = "returns a list of object"
  value       = rancher2_cluster.this.cluster_registration_token
}

output "default_pod_security_policy_template_id" {
  description = "returns a string"
  value       = rancher2_cluster.this.default_pod_security_policy_template_id
}

output "default_project_id" {
  description = "returns a string"
  value       = rancher2_cluster.this.default_project_id
}

output "desired_agent_image" {
  description = "returns a string"
  value       = rancher2_cluster.this.desired_agent_image
}

output "desired_auth_image" {
  description = "returns a string"
  value       = rancher2_cluster.this.desired_auth_image
}

output "docker_root_dir" {
  description = "returns a string"
  value       = rancher2_cluster.this.docker_root_dir
}

output "driver" {
  description = "returns a string"
  value       = rancher2_cluster.this.driver
}

output "id" {
  description = "returns a string"
  value       = rancher2_cluster.this.id
}

output "kube_config" {
  description = "returns a string"
  value       = rancher2_cluster.this.kube_config
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_cluster.this.labels
}

output "system_project_id" {
  description = "returns a string"
  value       = rancher2_cluster.this.system_project_id
}

output "this" {
  value = rancher2_cluster.this
}

