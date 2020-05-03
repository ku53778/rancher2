module "rancher2_user" {
  source = "./modules/rancher2/r/rancher2_user"

  annotations = {}
  enabled     = null
  labels      = {}
  name        = null
  password    = null
  username    = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
