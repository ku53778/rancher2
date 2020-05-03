terraform {
  required_providers {
    rancher2 = ">= 1.8.3"
  }
}

resource "rancher2_bootstrap" "this" {
  current_password = var.current_password
  password         = var.password
  telemetry        = var.telemetry
  token_ttl        = var.token_ttl
  token_update     = var.token_update
}

