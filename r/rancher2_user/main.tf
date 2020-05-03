terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

resource "rancher2_user" "this" {
  annotations = var.annotations
  enabled     = var.enabled
  labels      = var.labels
  name        = var.name
  password    = var.password
  username    = var.username

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

