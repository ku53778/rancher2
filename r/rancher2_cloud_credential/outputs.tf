output "driver" {
  description = "returns a string"
  value       = rancher2_cloud_credential.this.driver
}

output "id" {
  description = "returns a string"
  value       = rancher2_cloud_credential.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_cloud_credential.this.labels
}

output "this" {
  value = rancher2_cloud_credential.this
}

