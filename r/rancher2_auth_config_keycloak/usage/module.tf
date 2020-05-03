module "rancher2_auth_config_keycloak" {
  source = "./modules/rancher2/r/rancher2_auth_config_keycloak"

  access_mode           = null
  allowed_principal_ids = []
  annotations           = {}
  display_name_field    = null
  enabled               = null
  groups_field          = null
  idp_metadata_content  = null
  labels                = {}
  rancher_api_host      = null
  sp_cert               = null
  sp_key                = null
  uid_field             = null
  user_name_field       = null
}
