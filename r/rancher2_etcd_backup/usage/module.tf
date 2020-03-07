module "rancher2_etcd_backup" {
  source = "./rancher2/r/rancher2_etcd_backup"

  annotations  = {}
  cluster_id   = null
  filename     = null
  labels       = {}
  manual       = null
  name         = null
  namespace_id = null

  backup_config = [{
    enabled        = null
    interval_hours = null
    retention      = null
    s3_backup_config = [{
      access_key  = null
      bucket_name = null
      custom_ca   = null
      endpoint    = null
      folder      = null
      region      = null
      secret_key  = null
    }]
    safe_timestamp = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
