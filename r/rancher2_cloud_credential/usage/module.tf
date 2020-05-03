module "rancher2_cloud_credential" {
  source = "./modules/rancher2/r/rancher2_cloud_credential"

  annotations = {}
  description = null
  labels      = {}
  name        = null

  amazonec2_credential_config = [{
    access_key = null
    secret_key = null
  }]

  azure_credential_config = [{
    client_id       = null
    client_secret   = null
    subscription_id = null
  }]

  digitalocean_credential_config = [{
    access_token = null
  }]

  openstack_credential_config = [{
    password = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  vsphere_credential_config = [{
    password     = null
    username     = null
    vcenter      = null
    vcenter_port = null
  }]
}
