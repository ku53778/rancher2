module "rancher2_bootstrap" {
  source = "./rancher2/r/rancher2_bootstrap"

  current_password = null
  password         = null
  telemetry        = null
  token_ttl        = null
  token_update     = null
}
