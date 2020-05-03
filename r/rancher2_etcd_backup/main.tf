terraform {
  required_providers {
    rancher2 = ">= 1.7.3"
  }
}

resource "rancher2_etcd_backup" "this" {
  annotations  = var.annotations
  cluster_id   = var.cluster_id
  filename     = var.filename
  labels       = var.labels
  manual       = var.manual
  name         = var.name
  namespace_id = var.namespace_id

  dynamic "backup_config" {
    for_each = var.backup_config
    content {
      enabled        = backup_config.value["enabled"]
      interval_hours = backup_config.value["interval_hours"]
      retention      = backup_config.value["retention"]
      safe_timestamp = backup_config.value["safe_timestamp"]

      dynamic "s3_backup_config" {
        for_each = backup_config.value.s3_backup_config
        content {
          access_key  = s3_backup_config.value["access_key"]
          bucket_name = s3_backup_config.value["bucket_name"]
          custom_ca   = s3_backup_config.value["custom_ca"]
          endpoint    = s3_backup_config.value["endpoint"]
          folder      = s3_backup_config.value["folder"]
          region      = s3_backup_config.value["region"]
          secret_key  = s3_backup_config.value["secret_key"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

