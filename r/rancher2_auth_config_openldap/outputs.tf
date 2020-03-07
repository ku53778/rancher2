output "annotations" {
  description = "returns a map of string"
  value       = rancher2_auth_config_openldap.this.annotations
}

output "group_dn_attribute" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.group_dn_attribute
}

output "group_member_mapping_attribute" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.group_member_mapping_attribute
}

output "group_member_user_attribute" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.group_member_user_attribute
}

output "group_name_attribute" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.group_name_attribute
}

output "group_object_class" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.group_object_class
}

output "group_search_attribute" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.group_search_attribute
}

output "group_search_base" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.group_search_base
}

output "id" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.id
}

output "labels" {
  description = "returns a map of string"
  value       = rancher2_auth_config_openldap.this.labels
}

output "name" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.name
}

output "nested_group_membership_enabled" {
  description = "returns a bool"
  value       = rancher2_auth_config_openldap.this.nested_group_membership_enabled
}

output "tls" {
  description = "returns a bool"
  value       = rancher2_auth_config_openldap.this.tls
}

output "type" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.type
}

output "user_disabled_bit_mask" {
  description = "returns a number"
  value       = rancher2_auth_config_openldap.this.user_disabled_bit_mask
}

output "user_enabled_attribute" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.user_enabled_attribute
}

output "user_login_attribute" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.user_login_attribute
}

output "user_member_attribute" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.user_member_attribute
}

output "user_name_attribute" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.user_name_attribute
}

output "user_object_class" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.user_object_class
}

output "user_search_attribute" {
  description = "returns a string"
  value       = rancher2_auth_config_openldap.this.user_search_attribute
}

output "this" {
  value = rancher2_auth_config_openldap.this
}

