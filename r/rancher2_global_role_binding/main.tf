terraform {
  required_providers {
    rancher2 = ">= 1.8.1"
  }
}

resource "rancher2_global_role_binding" "this" {
  annotations        = var.annotations
  global_role_id     = var.global_role_id
  group_principal_id = var.group_principal_id
  labels             = var.labels
  name               = var.name
  user_id            = var.user_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

