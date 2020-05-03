terraform {
  required_providers {
    rancher2 = ">= 1.8.2"
  }
}

data "rancher2_cluster_logging" "this" {
  cluster_id = var.cluster_id
}

