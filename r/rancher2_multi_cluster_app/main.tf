terraform {
  required_providers {
    rancher2 = ">= 1.8.1"
  }
}

resource "rancher2_multi_cluster_app" "this" {
  annotations            = var.annotations
  catalog_name           = var.catalog_name
  labels                 = var.labels
  name                   = var.name
  revision_history_limit = var.revision_history_limit
  revision_id            = var.revision_id
  roles                  = var.roles
  template_name          = var.template_name
  template_version       = var.template_version
  wait                   = var.wait

  dynamic "answers" {
    for_each = var.answers
    content {
      cluster_id = answers.value["cluster_id"]
      project_id = answers.value["project_id"]
      values     = answers.value["values"]
    }
  }

  dynamic "members" {
    for_each = var.members
    content {
      access_type        = members.value["access_type"]
      group_principal_id = members.value["group_principal_id"]
      user_principal_id  = members.value["user_principal_id"]
    }
  }

  dynamic "targets" {
    for_each = var.targets
    content {
      project_id = targets.value["project_id"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

  dynamic "upgrade_strategy" {
    for_each = var.upgrade_strategy
    content {

      dynamic "rolling_update" {
        for_each = upgrade_strategy.value.rolling_update
        content {
          batch_size = rolling_update.value["batch_size"]
          interval   = rolling_update.value["interval"]
        }
      }

    }
  }

}

