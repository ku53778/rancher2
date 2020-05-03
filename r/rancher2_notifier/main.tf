terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

resource "rancher2_notifier" "this" {
  annotations   = var.annotations
  cluster_id    = var.cluster_id
  description   = var.description
  labels        = var.labels
  name          = var.name
  send_resolved = var.send_resolved

  dynamic "pagerduty_config" {
    for_each = var.pagerduty_config
    content {
      proxy_url   = pagerduty_config.value["proxy_url"]
      service_key = pagerduty_config.value["service_key"]
    }
  }

  dynamic "slack_config" {
    for_each = var.slack_config
    content {
      default_recipient = slack_config.value["default_recipient"]
      proxy_url         = slack_config.value["proxy_url"]
      url               = slack_config.value["url"]
    }
  }

  dynamic "smtp_config" {
    for_each = var.smtp_config
    content {
      default_recipient = smtp_config.value["default_recipient"]
      host              = smtp_config.value["host"]
      password          = smtp_config.value["password"]
      port              = smtp_config.value["port"]
      sender            = smtp_config.value["sender"]
      tls               = smtp_config.value["tls"]
      username          = smtp_config.value["username"]
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

  dynamic "webhook_config" {
    for_each = var.webhook_config
    content {
      proxy_url = webhook_config.value["proxy_url"]
      url       = webhook_config.value["url"]
    }
  }

  dynamic "wechat_config" {
    for_each = var.wechat_config
    content {
      agent             = wechat_config.value["agent"]
      corp              = wechat_config.value["corp"]
      default_recipient = wechat_config.value["default_recipient"]
      proxy_url         = wechat_config.value["proxy_url"]
      recipient_type    = wechat_config.value["recipient_type"]
      secret            = wechat_config.value["secret"]
    }
  }

}

