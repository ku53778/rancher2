terraform {
  required_providers {
    rancher2 = ">= 1.7.2"
  }
}

data "rancher2_cluster_logging" "this" {
  cluster_id = var.cluster_id
}

