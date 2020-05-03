terraform {
  required_providers {
    rancher2 = ">= 1.8.2"
  }
}

resource "rancher2_auth_config_github" "this" {
  access_mode           = var.access_mode
  allowed_principal_ids = var.allowed_principal_ids
  annotations           = var.annotations
  client_id             = var.client_id
  client_secret         = var.client_secret
  enabled               = var.enabled
  hostname              = var.hostname
  labels                = var.labels
  tls                   = var.tls
}

