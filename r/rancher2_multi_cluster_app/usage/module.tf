module "rancher2_multi_cluster_app" {
  source = "./modules/rancher2/r/rancher2_multi_cluster_app"

  annotations            = {}
  catalog_name           = null
  labels                 = {}
  name                   = null
  revision_history_limit = null
  revision_id            = null
  roles                  = []
  template_name          = null
  template_version       = null
  wait                   = null

  answers = [{
    cluster_id = null
    project_id = null
    values     = {}
  }]

  members = [{
    access_type        = null
    group_principal_id = null
    user_principal_id  = null
  }]

  targets = [{
    app_id       = null
    health_state = null
    project_id   = null
    state        = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  upgrade_strategy = [{
    rolling_update = [{
      batch_size = null
      interval   = null
    }]
  }]
}
