module "rancher2_token" {
  source = "./rancher2/r/rancher2_token"

  annotations = {}
  cluster_id  = null
  description = null
  labels      = {}
  renew       = null
  ttl         = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
