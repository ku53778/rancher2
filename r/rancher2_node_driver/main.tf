terraform {
  required_providers {
    rancher2 = ">= 1.8.3"
  }
}

resource "rancher2_node_driver" "this" {
  active            = var.active
  annotations       = var.annotations
  builtin           = var.builtin
  checksum          = var.checksum
  description       = var.description
  external_id       = var.external_id
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

