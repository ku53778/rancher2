terraform {
  required_providers {
    rancher2 = ">= 1.7.2"
  }
}

resource "rancher2_project" "this" {
  annotations                     = var.annotations
  cluster_id                      = var.cluster_id
  description                     = var.description
  enable_project_monitoring       = var.enable_project_monitoring
  labels                          = var.labels
  name                            = var.name
  pod_security_policy_template_id = var.pod_security_policy_template_id
  wait_for_cluster                = var.wait_for_cluster

  dynamic "container_resource_limit" {
    for_each = var.container_resource_limit
    content {
      limits_cpu      = container_resource_limit.value["limits_cpu"]
      limits_memory   = container_resource_limit.value["limits_memory"]
      requests_cpu    = container_resource_limit.value["requests_cpu"]
      requests_memory = container_resource_limit.value["requests_memory"]
    }
  }

  dynamic "project_monitoring_input" {
    for_each = var.project_monitoring_input
    content {
      answers = project_monitoring_input.value["answers"]
    }
  }

  dynamic "resource_quota" {
    for_each = var.resource_quota
    content {

      dynamic "namespace_default_limit" {
        for_each = resource_quota.value.namespace_default_limit
        content {
          config_maps              = namespace_default_limit.value["config_maps"]
          limits_cpu               = namespace_default_limit.value["limits_cpu"]
          limits_memory            = namespace_default_limit.value["limits_memory"]
          persistent_volume_claims = namespace_default_limit.value["persistent_volume_claims"]
          pods                     = namespace_default_limit.value["pods"]
          replication_controllers  = namespace_default_limit.value["replication_controllers"]
          requests_cpu             = namespace_default_limit.value["requests_cpu"]
          requests_memory          = namespace_default_limit.value["requests_memory"]
          requests_storage         = namespace_default_limit.value["requests_storage"]
          secrets                  = namespace_default_limit.value["secrets"]
          services                 = namespace_default_limit.value["services"]
          services_load_balancers  = namespace_default_limit.value["services_load_balancers"]
          services_node_ports      = namespace_default_limit.value["services_node_ports"]
        }
      }

      dynamic "project_limit" {
        for_each = resource_quota.value.project_limit
        content {
          config_maps              = project_limit.value["config_maps"]
          limits_cpu               = project_limit.value["limits_cpu"]
          limits_memory            = project_limit.value["limits_memory"]
          persistent_volume_claims = project_limit.value["persistent_volume_claims"]
          pods                     = project_limit.value["pods"]
          replication_controllers  = project_limit.value["replication_controllers"]
          requests_cpu             = project_limit.value["requests_cpu"]
          requests_memory          = project_limit.value["requests_memory"]
          requests_storage         = project_limit.value["requests_storage"]
          secrets                  = project_limit.value["secrets"]
          services                 = project_limit.value["services"]
          services_load_balancers  = project_limit.value["services_load_balancers"]
          services_node_ports      = project_limit.value["services_node_ports"]
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

