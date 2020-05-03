terraform {
  required_providers {
    rancher2 = ">= 1.8.2"
  }
}

data "rancher2_cluster_role_template_binding" "this" {
  cluster_id       = var.cluster_id
  name             = var.name
  role_template_id = var.role_template_id
}

