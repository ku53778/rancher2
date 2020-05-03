module "rancher2_cluster_sync" {
  source = "./modules/rancher2/r/rancher2_cluster_sync"

  cluster_id    = null
  node_pool_ids = []
  synced        = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
