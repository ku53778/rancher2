terraform {
  required_providers {
    rancher2 = ">= 1.8.3"
  }
}

resource "rancher2_project_role_template_binding" "this" {
  annotations        = var.annotations
  group_id           = var.group_id
  group_principal_id = var.group_principal_id
  labels             = var.labels
  name               = var.name
  project_id         = var.project_id
  role_template_id   = var.role_template_id
  user_id            = var.user_id
  user_principal_id  = var.user_principal_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

