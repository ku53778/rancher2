output "id" {
  description = "returns a string"
  value       = data.rancher2_setting.this.id
}

output "value" {
  description = "returns a string"
  value       = data.rancher2_setting.this.value
}

output "this" {
  value = rancher2_setting.this
}

