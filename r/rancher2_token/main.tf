terraform {
  required_providers {
    rancher2 = ">= 1.7.2"
  }
}

resource "rancher2_token" "this" {
  annotations = var.annotations
  cluster_id  = var.cluster_id
  description = var.description
  labels      = var.labels
  renew       = var.renew
  ttl         = var.ttl

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

