terraform {
  required_providers {
    rancher2 = ">= 1.7.3"
  }
}

resource "rancher2_auth_config_openldap" "this" {
  access_mode                        = var.access_mode
  allowed_principal_ids              = var.allowed_principal_ids
  annotations                        = var.annotations
  certificate                        = var.certificate
  connection_timeout                 = var.connection_timeout
  enabled                            = var.enabled
  group_dn_attribute                 = var.group_dn_attribute
  group_member_mapping_attribute     = var.group_member_mapping_attribute
  group_member_user_attribute        = var.group_member_user_attribute
  group_name_attribute               = var.group_name_attribute
  group_object_class                 = var.group_object_class
  group_search_attribute             = var.group_search_attribute
  group_search_base                  = var.group_search_base
  labels                             = var.labels
  nested_group_membership_enabled    = var.nested_group_membership_enabled
  port                               = var.port
  servers                            = var.servers
  service_account_distinguished_name = var.service_account_distinguished_name
  service_account_password           = var.service_account_password
  tls                                = var.tls
  user_disabled_bit_mask             = var.user_disabled_bit_mask
  user_enabled_attribute             = var.user_enabled_attribute
  user_login_attribute               = var.user_login_attribute
  user_member_attribute              = var.user_member_attribute
  user_name_attribute                = var.user_name_attribute
  user_object_class                  = var.user_object_class
  user_search_attribute              = var.user_search_attribute
  user_search_base                   = var.user_search_base
}

