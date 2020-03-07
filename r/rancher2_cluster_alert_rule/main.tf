terraform {
  required_providers {
    rancher2 = ">= 1.7.2"
  }
}

resource "rancher2_cluster_alert_rule" "this" {
  annotations             = var.annotations
  cluster_id              = var.cluster_id
  group_id                = var.group_id
  group_interval_seconds  = var.group_interval_seconds
  group_wait_seconds      = var.group_wait_seconds
  inherited               = var.inherited
  labels                  = var.labels
  name                    = var.name
  repeat_interval_seconds = var.repeat_interval_seconds
  severity                = var.severity

  dynamic "event_rule" {
    for_each = var.event_rule
    content {
      event_type    = event_rule.value["event_type"]
      resource_kind = event_rule.value["resource_kind"]
    }
  }

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

  dynamic "node_rule" {
    for_each = var.node_rule
    content {
      condition     = node_rule.value["condition"]
      cpu_threshold = node_rule.value["cpu_threshold"]
      mem_threshold = node_rule.value["mem_threshold"]
      node_id       = node_rule.value["node_id"]
      selector      = node_rule.value["selector"]
    }
  }

  dynamic "system_service_rule" {
    for_each = var.system_service_rule
    content {
      condition = system_service_rule.value["condition"]
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

