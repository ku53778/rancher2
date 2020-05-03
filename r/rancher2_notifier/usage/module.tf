module "rancher2_notifier" {
  source = "./modules/rancher2/r/rancher2_notifier"

  annotations   = {}
  cluster_id    = null
  description   = null
  labels        = {}
  name          = null
  send_resolved = null

  pagerduty_config = [{
    proxy_url   = null
    service_key = null
  }]

  slack_config = [{
    default_recipient = null
    proxy_url         = null
    url               = null
  }]

  smtp_config = [{
    default_recipient = null
    host              = null
    password          = null
    port              = null
    sender            = null
    tls               = null
    username          = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  webhook_config = [{
    proxy_url = null
    url       = null
  }]

  wechat_config = [{
    agent             = null
    corp              = null
    default_recipient = null
    proxy_url         = null
    recipient_type    = null
    secret            = null
  }]
}
