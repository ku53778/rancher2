module "rancher2_app" {
  source = "./rancher2/d/rancher2_app"

  annotations      = {}
  name             = null
  project_id       = null
  target_namespace = null
}
