module "rancher2_project_role_template_binding" {
  source = "./modules/rancher2/r/rancher2_project_role_template_binding"

  annotations        = {}
  group_id           = null
  group_principal_id = null
  labels             = {}
  name               = null
  project_id         = null
  role_template_id   = null
  user_id            = null
  user_principal_id  = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
