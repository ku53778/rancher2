terraform {
  required_providers {
    rancher2 = ">= 1.7.3"
  }
}

resource "rancher2_cluster_sync" "this" {
  cluster_id    = var.cluster_id
  node_pool_ids = var.node_pool_ids
  synced        = var.synced

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

