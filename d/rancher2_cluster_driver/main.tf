terraform {
  required_providers {
    rancher2 = ">= 1.7.3"
  }
}

data "rancher2_cluster_driver" "this" {
  name = var.name
  url  = var.url
}

