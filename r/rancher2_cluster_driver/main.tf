terraform {
  required_providers {
    rancher2 = ">= 1.8.2"
  }
}

resource "rancher2_cluster_driver" "this" {
  active            = var.active
  actual_url        = var.actual_url
  annotations       = var.annotations
  builtin           = var.builtin
  checksum          = var.checksum
  labels            = var.labels
  name              = var.name
  ui_url            = var.ui_url
  url               = var.url
  whitelist_domains = var.whitelist_domains

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

