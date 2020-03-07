output "annotations" {
  description = "returns a map of string"
  value       = data.rancher2_etcd_backup.this.annotations
}

output "backup_config" {
  description = "returns a list of object"
  value       = data.rancher2_etcd_backup.this.backup_config
}

output "filename" {
  description = "returns a string"
  value       = data.rancher2_etcd_backup.this.filename
}

output "id" {
  description = "returns a string"
  value       = data.rancher2_etcd_backup.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = data.rancher2_etcd_backup.this.labels
}

output "manual" {
  description = "returns a bool"
  value       = data.rancher2_etcd_backup.this.manual
}

output "namespace_id" {
  description = "returns a string"
  value       = data.rancher2_etcd_backup.this.namespace_id
}

output "this" {
  value = rancher2_etcd_backup.this
}

