module "rancher2_cluster_alert_rule" {
  source = "./rancher2/d/rancher2_cluster_alert_rule"

  cluster_id = null
  labels     = {}
  name       = null
}
