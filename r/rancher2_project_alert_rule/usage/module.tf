module "rancher2_project_alert_rule" {
  source = "./modules/rancher2/r/rancher2_project_alert_rule"

  annotations             = {}
  group_id                = null
  group_interval_seconds  = null
  group_wait_seconds      = null
  inherited               = null
  labels                  = {}
  name                    = null
  project_id              = null
  repeat_interval_seconds = null
  severity                = null

  metric_rule = [{
    comparison      = null
    description     = null
    duration        = null
    expression      = null
    threshold_value = null
  }]

  pod_rule = [{
    condition                = null
    pod_id                   = null
    restart_interval_seconds = null
    restart_times            = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  workload_rule = [{
    available_percentage = null
    selector             = {}
    workload_id          = null
  }]
}
