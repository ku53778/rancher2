terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

resource "rancher2_certificate" "this" {
  annotations  = var.annotations
  certs        = var.certs
  description  = var.description
  key          = var.key
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

