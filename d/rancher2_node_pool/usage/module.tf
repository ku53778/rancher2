module "rancher2_node_pool" {
  source = "./rancher2/d/rancher2_node_pool"

  cluster_id       = null
  name             = null
  node_template_id = null
}
