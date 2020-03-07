terraform {
  required_providers {
    rancher2 = ">= 1.7.2"
  }
}

data "rancher2_cluster_alert_rule" "this" {
  cluster_id = var.cluster_id
  labels     = var.labels
  name       = var.name
}

