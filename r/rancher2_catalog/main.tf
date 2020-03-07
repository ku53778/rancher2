terraform {
  required_providers {
    rancher2 = ">= 1.7.2"
  }
}

resource "rancher2_catalog" "this" {
  annotations = var.annotations
  branch      = var.branch
  cluster_id  = var.cluster_id
  description = var.description
  kind        = var.kind
  labels      = var.labels
  name        = var.name
  password    = var.password
  project_id  = var.project_id
  refresh     = var.refresh
  scope       = var.scope
  url         = var.url
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
