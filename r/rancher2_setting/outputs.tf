output "annotations" {
  description = "returns a map of string"
  value       = rancher2_setting.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_setting.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_setting.this.labels
}

output "this" {
  value = rancher2_setting.this
}

