terraform {
  required_providers {
    rancher2 = ">= 1.8.3"
  }
}

resource "rancher2_node_pool" "this" {
  annotations                 = var.annotations
  cluster_id                  = var.cluster_id
  control_plane               = var.control_plane
  delete_not_ready_after_secs = var.delete_not_ready_after_secs
  etcd                        = var.etcd
  hostname_prefix             = var.hostname_prefix
  labels                      = var.labels
  name                        = var.name
  node_template_id            = var.node_template_id
  quantity                    = var.quantity
  worker                      = var.worker

  dynamic "node_taints" {
    for_each = var.node_taints
    content {
      effect     = node_taints.value["effect"]
      key        = node_taints.value["key"]
      time_added = node_taints.value["time_added"]
      value      = node_taints.value["value"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

