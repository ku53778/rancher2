terraform {
  required_providers {
    rancher2 = ">= 1.7.3"
  }
}

resource "rancher2_registry" "this" {
  annotations  = var.annotations
  description  = var.description
  labels       = var.labels
  name         = var.name
  namespace_id = var.namespace_id
  project_id   = var.project_id

  dynamic "registries" {
    for_each = var.registries
    content {
      address  = registries.value["address"]
      password = registries.value["password"]
      username = registries.value["username"]
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

