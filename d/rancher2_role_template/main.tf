terraform {
  required_providers {
    rancher2 = ">= 1.8.1"
  }
}

data "rancher2_role_template" "this" {
  context = var.context
  name    = var.name
}

