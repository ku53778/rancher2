terraform {
  required_providers {
    rancher2 = ">= 1.7.2"
  }
}

data "rancher2_registry" "this" {
  name         = var.name
  namespace_id = var.namespace_id
  project_id   = var.project_id
}
