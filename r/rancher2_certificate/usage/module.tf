module "rancher2_certificate" {
  source = "./modules/rancher2/r/rancher2_certificate"

  annotations  = {}
  certs        = null
  description  = null
  key          = null
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
