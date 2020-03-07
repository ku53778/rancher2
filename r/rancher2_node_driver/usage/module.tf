module "rancher2_node_driver" {
  source = "./rancher2/r/rancher2_node_driver"

  active            = null
  annotations       = {}
  builtin           = null
  checksum          = null
  description       = null
  external_id       = null
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
