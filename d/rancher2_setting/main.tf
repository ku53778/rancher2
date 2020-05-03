terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

data "rancher2_setting" "this" {
  name = var.name
}

