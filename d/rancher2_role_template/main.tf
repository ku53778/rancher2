terraform {
  required_providers {
    rancher2 = ">= 1.7.3"
  }
}

data "rancher2_role_template" "this" {
  context = var.context
  name    = var.name
}

