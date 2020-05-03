module "rancher2_cluster_alert_group" {
  source = "./modules/rancher2/r/rancher2_cluster_alert_group"

  annotations             = {}
  cluster_id              = null
  description             = null
  group_interval_seconds  = null
  group_wait_seconds      = null
  labels                  = {}
  name                    = null
  repeat_interval_seconds = null

  recipients = [{
    default_recipient = null
    notifier_id       = null
    notifier_type     = null
    recipient         = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
