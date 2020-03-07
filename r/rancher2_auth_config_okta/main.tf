terraform {
  required_providers {
    rancher2 = ">= 1.7.2"
  }
}

resource "rancher2_auth_config_okta" "this" {
  access_mode           = var.access_mode
  allowed_principal_ids = var.allowed_principal_ids
  annotations           = var.annotations
  display_name_field    = var.display_name_field
  enabled               = var.enabled
  groups_field          = var.groups_field
  idp_metadata_content  = var.idp_metadata_content
  labels                = var.labels
  rancher_api_host      = var.rancher_api_host
  sp_cert               = var.sp_cert
  sp_key                = var.sp_key
  uid_field             = var.uid_field
  user_name_field       = var.user_name_field
}

