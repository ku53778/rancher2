terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

resource "rancher2_setting" "this" {
  annotations = var.annotations
  labels      = var.labels
  name        = var.name
  value       = var.value
}

