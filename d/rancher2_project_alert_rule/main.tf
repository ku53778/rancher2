terraform {
  required_providers {
    rancher2 = ">= 1.7.3"
  }
}

data "rancher2_project_alert_rule" "this" {
  labels     = var.labels
  name       = var.name
  project_id = var.project_id
}

