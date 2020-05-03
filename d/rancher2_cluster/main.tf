terraform {
  required_providers {
    rancher2 = ">= 1.8.1"
  }
}

data "rancher2_cluster" "this" {
  name = var.name
}

