output "annotations" {
  description = "returns a map of string"
  value       = rancher2_etcd_backup.this.annotations
}

output "filename" {
  description = "returns a string"
  value       = rancher2_etcd_backup.this.filename
}

output "id" {
  description = "returns a string"
  value       = rancher2_etcd_backup.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_etcd_backup.this.labels
}

output "name" {
  description = "returns a string"
  value       = rancher2_etcd_backup.this.name
}

output "namespace_id" {
  description = "returns a string"
  value       = rancher2_etcd_backup.this.namespace_id
}

output "this" {
  value = rancher2_etcd_backup.this
}

