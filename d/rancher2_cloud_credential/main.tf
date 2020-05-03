terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

data "rancher2_cloud_credential" "this" {
  name = var.name
}

