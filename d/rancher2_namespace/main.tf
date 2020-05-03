terraform {
  required_providers {
    rancher2 = ">= 1.8.1"
  }
}

data "rancher2_namespace" "this" {
  name       = var.name
  project_id = var.project_id
}

