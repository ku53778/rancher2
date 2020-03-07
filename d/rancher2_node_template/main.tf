terraform {
  required_providers {
    rancher2 = ">= 1.7.2"
  }
}

data "rancher2_node_template" "this" {
  name                    = var.name
  use_internal_ip_address = var.use_internal_ip_address
}

