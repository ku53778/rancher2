terraform {
  required_providers {
    rancher2 = ">= 1.8.1"
  }
}

data "rancher2_user" "this" {
  is_external = var.is_external
  name        = var.name
  username    = var.username
}

