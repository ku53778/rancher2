terraform {
  required_providers {
    rancher2 = ">= 1.7.2"
  }
}

data "rancher2_cluster" "this" {
  name = var.name
}

