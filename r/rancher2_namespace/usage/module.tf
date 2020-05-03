module "rancher2_namespace" {
  source = "./modules/rancher2/r/rancher2_namespace"

  annotations      = {}
  description      = null
  labels           = {}
  name             = null
  project_id       = null
  wait_for_cluster = null

  container_resource_limit = [{
    limits_cpu      = null
    limits_memory   = null
    requests_cpu    = null
    requests_memory = null
  }]

  resource_quota = [{
    limit = [{
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
