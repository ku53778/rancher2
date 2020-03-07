output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_certificate.this.annotations
}

output "certs" {
  description = "returns a string"
  value       = data.rancher2_certificate.this.certs
}

output "description" {
  description = "returns a string"
  value       = data.rancher2_certificate.this.description
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_certificate.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_certificate.this.labels
}

output "this" {
  value = rancher2_certificate.this
}

