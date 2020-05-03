output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_cluster_scan.this.annotations
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_cluster_scan.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_cluster_scan.this.labels
}

output "name" {
  description = "returns a string"
  value       = data.rancher2_cluster_scan.this.name
}

output "run_type" {
  description = "returns a string"
  value       = data.rancher2_cluster_scan.this.run_type
}

output "scan_config" {
  description = "returns a list of object"
  value       = data.rancher2_cluster_scan.this.scan_config
}

output "scan_type" {
  description = "returns a string"
  value       = data.rancher2_cluster_scan.this.scan_type
}

output "status" {
  description = "returns a string"
  value       = data.rancher2_cluster_scan.this.status
}

output "this" {
  value = rancher2_cluster_scan.this
}

