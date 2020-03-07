module "rancher2_project" {
  source = "./rancher2/r/rancher2_project"

  annotations                     = {}
  cluster_id                      = null
  description                     = null
  enable_project_monitoring       = null
  labels                          = {}
  name                            = null
  pod_security_policy_template_id = null
  wait_for_cluster                = null

  container_resource_limit = [{
    limits_cpu      = null
    limits_memory   = null
    requests_cpu    = null
    requests_memory = null
  }]

  project_monitoring_input = [{
    answers = {}
  }]

  resource_quota = [{
    namespace_default_limit = [{
      config_maps              = null
      limits_cpu               = null
      limits_memory            = null
      persistent_volume_claims = null
      pods                     = null
      replication_controllers  = null
      requests_cpu             = null
      requests_memory          = null
      requests_storage         = null
      secrets                  = null
      services                 = null
      services_load_balancers  = null
      services_node_ports      = null
    }]
    project_limit = [{
      config_maps              = null
      limits_cpu               = null
      limits_memory            = null
      persistent_volume_claims = null
      pods                     = null
      replication_controllers  = null
      requests_cpu             = null
      requests_memory          = null
      requests_storage         = null
      secrets                  = null
      services                 = null
      services_load_balancers  = null
      services_node_ports      = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
