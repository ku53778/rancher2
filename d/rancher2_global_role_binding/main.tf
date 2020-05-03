terraform {
  required_providers {
    rancher2 = ">= 1.8.1"
  }
}

data "rancher2_global_role_binding" "this" {
  global_role_id = var.global_role_id
  name           = var.name
}

