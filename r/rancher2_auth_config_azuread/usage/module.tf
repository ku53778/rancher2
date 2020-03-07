module "rancher2_auth_config_azuread" {
  source = "./rancher2/r/rancher2_auth_config_azuread"

  access_mode           = null
  allowed_principal_ids = []
  annotations           = {}
  application_id        = null
  application_secret    = null
  auth_endpoint         = null
  enabled               = null
  endpoint              = null
  graph_endpoint        = null
  labels                = {}
  rancher_url           = null
  tenant_id             = null
  token_endpoint        = null
}
