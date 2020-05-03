module "rancher2_project_alert_rule" {
  source = "./modules/rancher2/d/rancher2_project_alert_rule"

  labels     = {}
  name       = null
  project_id = null
}
