module "rancher2_registry" {
  source = "./rancher2/r/rancher2_registry"

  annotations  = {}
  description  = null
  labels       = {}
  name         = null
  namespace_id = null
  project_id   = null

  registries = [{
    address  = null
    password = null
    username = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
