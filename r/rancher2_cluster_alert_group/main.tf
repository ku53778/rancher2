terraform {
  required_providers {
    rancher2 = ">= 1.8.1"
  }
}

resource "rancher2_cluster_alert_group" "this" {
  annotations             = var.annotations
  cluster_id              = var.cluster_id
  description             = var.description
  group_interval_seconds  = var.group_interval_seconds
  group_wait_seconds      = var.group_wait_seconds
  labels                  = var.labels
  name                    = var.name
  repeat_interval_seconds = var.repeat_interval_seconds

  dynamic "recipients" {
    for_each = var.recipients
    content {
      default_recipient = recipients.value["default_recipient"]
      notifier_id       = recipients.value["notifier_id"]
      recipient         = recipients.value["recipient"]
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

