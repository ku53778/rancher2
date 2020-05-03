module "rancher2_cluster_alert_rule" {
  source = "./modules/rancher2/d/rancher2_cluster_alert_rule"

  cluster_id = null
  labels     = {}
  name       = null
}
