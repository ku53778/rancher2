terraform {
  required_providers {
    rancher2 = ">= 1.8.3"
  }
}

resource "rancher2_auth_config_azuread" "this" {
  access_mode           = var.access_mode
  allowed_principal_ids = var.allowed_principal_ids
  annotations           = var.annotations
  application_id        = var.application_id
  application_secret    = var.application_secret
  auth_endpoint         = var.auth_endpoint
  enabled               = var.enabled
  endpoint              = var.endpoint
  graph_endpoint        = var.graph_endpoint
  labels                = var.labels
  rancher_url           = var.rancher_url
  tenant_id             = var.tenant_id
  token_endpoint        = var.token_endpoint
}

