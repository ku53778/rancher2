terraform {
  required_providers {
    rancher2 = ">= 1.8.2"
  }
}

data "rancher2_cluster" "this" {
  name = var.name
}

