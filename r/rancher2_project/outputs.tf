output "annotations" {
  description = "returns a map of string"
  value       = rancher2_project.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_project.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_project.this.labels
}

output "this" {
  value = rancher2_project.this
}

