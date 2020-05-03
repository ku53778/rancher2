terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

data "rancher2_node_driver" "this" {
  name = var.name
  url  = var.url
}

