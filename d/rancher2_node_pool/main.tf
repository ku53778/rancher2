terraform {
  required_providers {
    rancher2 = ">= 1.8.3"
  }
}

data "rancher2_node_pool" "this" {
  cluster_id       = var.cluster_id
  name             = var.name
  node_template_id = var.node_template_id
}

