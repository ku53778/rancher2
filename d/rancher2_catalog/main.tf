terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

data "rancher2_catalog" "this" {
  name  = var.name
  scope = var.scope
}

