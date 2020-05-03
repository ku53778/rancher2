module "rancher2_global_role_binding" {
  source = "./modules/rancher2/r/rancher2_global_role_binding"

  annotations    = {}
  global_role_id = null
  labels         = {}
  name           = null
  user_id        = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
