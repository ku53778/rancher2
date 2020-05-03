module "rancher2_app" {
  source = "./modules/rancher2/r/rancher2_app"

  annotations      = {}
  answers          = {}
  catalog_name     = null
  description      = null
  force_upgrade    = null
  labels           = {}
  name             = null
  project_id       = null
  revision_id      = null
  target_namespace = null
  template_name    = null
  template_version = null
  values_yaml      = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
