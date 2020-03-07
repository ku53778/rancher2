module "rancher2_cluster_driver" {
  source = "./rancher2/r/rancher2_cluster_driver"

  active            = null
  actual_url        = null
  annotations       = {}
  builtin           = null
  checksum          = null
  labels            = {}
  name              = null
  ui_url            = null
  url               = null
  whitelist_domains = []

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
