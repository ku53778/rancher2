terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

data "rancher2_role_template" "this" {
  context = var.context
  name    = var.name
}

