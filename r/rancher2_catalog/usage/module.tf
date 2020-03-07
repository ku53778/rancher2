module "rancher2_catalog" {
  source = "./rancher2/r/rancher2_catalog"

  annotations = {}
  branch      = null
  cluster_id  = null
  description = null
  kind        = null
  labels      = {}
  name        = null
  password    = null
  project_id  = null
  refresh     = null
  scope       = null
  url         = null
  username    = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
