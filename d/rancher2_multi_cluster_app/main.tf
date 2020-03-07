terraform {
  required_providers {
    rancher2 = ">= 1.7.2"
  }
}

data "rancher2_multi_cluster_app" "this" {
  name = var.name
}

