module "rancher2_cluster_role_template_binding" {
  source = "./rancher2/r/rancher2_cluster_role_template_binding"

  annotations        = {}
  cluster_id         = null
  group_id           = null
  group_principal_id = null
  labels             = {}
  name               = null
  role_template_id   = null
  user_id            = null
  user_principal_id  = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
