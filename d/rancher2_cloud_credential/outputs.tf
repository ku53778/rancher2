output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_cloud_credential.this.annotations
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_cloud_credential.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_cloud_credential.this.labels
}

output "this" {
  value = rancher2_cloud_credential.this
}

