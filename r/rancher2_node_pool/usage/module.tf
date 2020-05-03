module "rancher2_node_pool" {
  source = "./modules/rancher2/r/rancher2_node_pool"

  annotations                 = {}
  cluster_id                  = null
  control_plane               = null
  delete_not_ready_after_secs = null
  etcd                        = null
  hostname_prefix             = null
  labels                      = {}
  name                        = null
  node_template_id            = null
  quantity                    = null
  worker                      = null

  node_taints = [{
    effect     = null
    key        = null
    time_added = null
    value      = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
