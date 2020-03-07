output "annotations" {
  description = "returns a map of string"
  value       = rancher2_project_logging.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_project_logging.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_project_logging.this.labels
}

output "output_tags" {
  description = "returns a map of string"
  value       = rancher2_project_logging.this.output_tags
}

output "this" {
  value = rancher2_project_logging.this
}

