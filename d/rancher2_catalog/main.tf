terraform {
  required_providers {
    rancher2 = ">= 1.8.2"
  }
}

data "rancher2_catalog" "this" {
  name  = var.name
  scope = var.scope
}

