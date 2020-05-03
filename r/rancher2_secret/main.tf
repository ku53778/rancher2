terraform {
  required_providers {
    rancher2 = ">= 1.8.2"
  }
}

resource "rancher2_secret" "this" {
  annotations  = var.annotations
  data         = var.data
  description  = var.description
  labels       = var.labels
  name         = var.name
  namespace_id = var.namespace_id
  project_id   = var.project_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

