terraform {
  required_providers {
    rancher2 = ">= 1.8.2"
  }
}

resource "rancher2_app" "this" {
  annotations      = var.annotations
  answers          = var.answers
  catalog_name     = var.catalog_name
  description      = var.description
  force_upgrade    = var.force_upgrade
  labels           = var.labels
  name             = var.name
  project_id       = var.project_id
  revision_id      = var.revision_id
  target_namespace = var.target_namespace
  template_name    = var.template_name
  template_version = var.template_version
  values_yaml      = var.values_yaml

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

