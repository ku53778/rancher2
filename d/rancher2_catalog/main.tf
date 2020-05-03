terraform {
  required_providers {
    rancher2 = ">= 1.7.3"
  }
}

data "rancher2_catalog" "this" {
  name  = var.name
  scope = var.scope
}

