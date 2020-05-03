terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

data "rancher2_secret" "this" {
  name         = var.name
  namespace_id = var.namespace_id
  project_id   = var.project_id
}

