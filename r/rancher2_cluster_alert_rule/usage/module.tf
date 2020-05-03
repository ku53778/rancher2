module "rancher2_cluster_alert_rule" {
  source = "./modules/rancher2/r/rancher2_cluster_alert_rule"

  annotations             = {}
  cluster_id              = null
  group_id                = null
  group_interval_seconds  = null
  group_wait_seconds      = null
  inherited               = null
  labels                  = {}
  name                    = null
  repeat_interval_seconds = null
  severity                = null

  event_rule = [{
    event_type    = null
    resource_kind = null
  }]

  metric_rule = [{
    comparison      = null
    description     = null
    duration        = null
    expression      = null
    threshold_value = null
  }]

  node_rule = [{
    condition     = null
    cpu_threshold = null
    mem_threshold = null
    node_id       = null
    selector      = {}
  }]

  system_service_rule = [{
    condition = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
