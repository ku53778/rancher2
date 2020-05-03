terraform {
  required_providers {
    rancher2 = ">= 1.7.3"
  }
}

resource "rancher2_cloud_credential" "this" {
  annotations = var.annotations
  description = var.description
  labels      = var.labels
  name        = var.name

  dynamic "amazonec2_credential_config" {
    for_each = var.amazonec2_credential_config
    content {
      access_key = amazonec2_credential_config.value["access_key"]
      secret_key = amazonec2_credential_config.value["secret_key"]
    }
  }

  dynamic "azure_credential_config" {
    for_each = var.azure_credential_config
    content {
      client_id       = azure_credential_config.value["client_id"]
      client_secret   = azure_credential_config.value["client_secret"]
      subscription_id = azure_credential_config.value["subscription_id"]
    }
  }

  dynamic "digitalocean_credential_config" {
    for_each = var.digitalocean_credential_config
    content {
      access_token = digitalocean_credential_config.value["access_token"]
    }
  }

  dynamic "openstack_credential_config" {
    for_each = var.openstack_credential_config
    content {
      password = openstack_credential_config.value["password"]
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

  dynamic "vsphere_credential_config" {
    for_each = var.vsphere_credential_config
    content {
      password     = vsphere_credential_config.value["password"]
      username     = vsphere_credential_config.value["username"]
      vcenter      = vsphere_credential_config.value["vcenter"]
      vcenter_port = vsphere_credential_config.value["vcenter_port"]
    }
  }

}

