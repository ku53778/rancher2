output "annotations" {
  description = "returns a map of string"
  value       = rancher2_certificate.this.annotations
}

output "id" {
  description = "returns a string"
  value       = rancher2_certificate.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_certificate.this.labels
}

output "this" {
  value = rancher2_certificate.this
}

