terraform {
  required_providers {
    rancher2 = ">= 1.8.2"
  }
}

data "rancher2_multi_cluster_app" "this" {
  name = var.name
}

