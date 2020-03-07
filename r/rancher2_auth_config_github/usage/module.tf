module "rancher2_auth_config_github" {
  source = "./rancher2/r/rancher2_auth_config_github"

  access_mode           = null
  allowed_principal_ids = []
  annotations           = {}
  client_id             = null
  client_secret         = null
  enabled               = null
  hostname              = null
  labels                = {}
  tls                   = null
}
