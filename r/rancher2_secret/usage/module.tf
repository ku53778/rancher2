module "rancher2_secret" {
  source = "./rancher2/r/rancher2_secret"

  annotations  = {}
  data         = {}
  description  = null
  labels       = {}
  name         = null
  namespace_id = null
  project_id   = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
