terraform {
  required_providers {
    rancher2 = ">= 1.7.3"
  }
}

data "rancher2_cluster_alert_rule" "this" {
  cluster_id = var.cluster_id
  labels     = var.labels
  name       = var.name
}

