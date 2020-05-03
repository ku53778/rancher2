terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

data "rancher2_app" "this" {
  annotations      = var.annotations
  name             = var.name
  project_id       = var.project_id
  target_namespace = var.target_namespace
}

