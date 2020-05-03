terraform {
  required_providers {
    rancher2 = ">= 1.8.1"
  }
}

data "rancher2_project_role_template_binding" "this" {
  name             = var.name
  project_id       = var.project_id
  role_template_id = var.role_template_id
}

