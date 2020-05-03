terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

resource "rancher2_namespace" "this" {
  annotations      = var.annotations
  description      = var.description
  labels           = var.labels
  name             = var.name
  project_id       = var.project_id
  wait_for_cluster = var.wait_for_cluster

  dynamic "container_resource_limit" {
    for_each = var.container_resource_limit
    content {
      limits_cpu      = container_resource_limit.value["limits_cpu"]
      limits_memory   = container_resource_limit.value["limits_memory"]
      requests_cpu    = container_resource_limit.value["requests_cpu"]
      requests_memory = container_resource_limit.value["requests_memory"]
    }
  }

  dynamic "resource_quota" {
    for_each = var.resource_quota
    content {

      dynamic "limit" {
        for_each = resource_quota.value.limit
        content {
          config_maps              = limit.value["config_maps"]
          limits_cpu               = limit.value["limits_cpu"]
          limits_memory            = limit.value["limits_memory"]
          persistent_volume_claims = limit.value["persistent_volume_claims"]
          pods                     = limit.value["pods"]
          replication_controllers  = limit.value["replication_controllers"]
          requests_cpu             = limit.value["requests_cpu"]
          requests_memory          = limit.value["requests_memory"]
          requests_storage         = limit.value["requests_storage"]
          secrets                  = limit.value["secrets"]
          services                 = limit.value["services"]
          services_load_balancers  = limit.value["services_load_balancers"]
          services_node_ports      = limit.value["services_node_ports"]
        }
      }

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

}

