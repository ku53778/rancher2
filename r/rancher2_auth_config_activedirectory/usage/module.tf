module "rancher2_auth_config_activedirectory" {
  source = "./modules/rancher2/r/rancher2_auth_config_activedirectory"

  access_mode                     = null
  allowed_principal_ids           = []
  annotations                     = {}
  certificate                     = null
  connection_timeout              = null
  default_login_domain            = null
  enabled                         = null
  group_dn_attribute              = null
  group_member_mapping_attribute  = null
  group_member_user_attribute     = null
  group_name_attribute            = null
  group_object_class              = null
  group_search_attribute          = null
  group_search_base               = null
  group_search_filter             = null
  labels                          = {}
  nested_group_membership_enabled = null
  port                            = null
  servers                         = []
  service_account_password        = null
  service_account_username        = null
  tls                             = null
  user_disabled_bit_mask          = null
  user_enabled_attribute          = null
  user_login_attribute            = null
  user_name_attribute             = null
  user_object_class               = null
  user_search_attribute           = null
  user_search_base                = null
  user_search_filter              = null
}
