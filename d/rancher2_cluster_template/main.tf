terraform {
  required_providers {
    rancher2 = ">= 1.8.3"
  }
}

data "rancher2_cluster_template" "this" {
  annotations = var.annotations
  description = var.description
  labels      = var.labels
  name        = var.name
}

