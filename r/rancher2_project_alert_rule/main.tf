terraform {
  required_providers {
    rancher2 = ">= 1.8.2"
  }
}

resource "rancher2_project_alert_rule" "this" {
  annotations             = var.annotations
  group_id                = var.group_id
  group_interval_seconds  = var.group_interval_seconds
  group_wait_seconds      = var.group_wait_seconds
  inherited               = var.inherited
  labels                  = var.labels
  name                    = var.name
  project_id              = var.project_id
  repeat_interval_seconds = var.repeat_interval_seconds
  severity                = var.severity

  dynamic "metric_rule" {
    for_each = var.metric_rule
    content {
      comparison      = metric_rule.value["comparison"]
      description     = metric_rule.value["description"]
      duration        = metric_rule.value["duration"]
      expression      = metric_rule.value["expression"]
      threshold_value = metric_rule.value["threshold_value"]
    }
  }

  dynamic "pod_rule" {
    for_each = var.pod_rule
    content {
      condition                = pod_rule.value["condition"]
      pod_id                   = pod_rule.value["pod_id"]
      restart_interval_seconds = pod_rule.value["restart_interval_seconds"]
      restart_times            = pod_rule.value["restart_times"]
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

  dynamic "workload_rule" {
    for_each = var.workload_rule
    content {
      available_percentage = workload_rule.value["available_percentage"]
      selector             = workload_rule.value["selector"]
      workload_id          = workload_rule.value["workload_id"]
    }
  }

}

