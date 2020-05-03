module "rancher2_project_alert_group" {
  source = "./modules/rancher2/r/rancher2_project_alert_group"

  annotations             = {}
  description             = null
  group_interval_seconds  = null
  group_wait_seconds      = null
  labels                  = {}
  name                    = null
  project_id              = null
  repeat_interval_seconds = null

  recipients = [{
    notifier_id   = null
    notifier_type = null
    recipient     = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
