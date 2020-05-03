terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

resource "rancher2_node_template" "this" {
  annotations                = var.annotations
  auth_certificate_authority = var.auth_certificate_authority
  auth_key                   = var.auth_key
  cloud_credential_id        = var.cloud_credential_id
  description                = var.description
  driver_id                  = var.driver_id
  engine_env                 = var.engine_env
  engine_insecure_registry   = var.engine_insecure_registry
  engine_install_url         = var.engine_install_url
  engine_label               = var.engine_label
  engine_opt                 = var.engine_opt
  engine_registry_mirror     = var.engine_registry_mirror
  engine_storage_driver      = var.engine_storage_driver
  labels                     = var.labels
  name                       = var.name
  use_internal_ip_address    = var.use_internal_ip_address

  dynamic "amazonec2_config" {
    for_each = var.amazonec2_config
    content {
      access_key                 = amazonec2_config.value["access_key"]
      ami                        = amazonec2_config.value["ami"]
      block_duration_minutes     = amazonec2_config.value["block_duration_minutes"]
      device_name                = amazonec2_config.value["device_name"]
      endpoint                   = amazonec2_config.value["endpoint"]
      iam_instance_profile       = amazonec2_config.value["iam_instance_profile"]
      insecure_transport         = amazonec2_config.value["insecure_transport"]
      instance_type              = amazonec2_config.value["instance_type"]
      keypair_name               = amazonec2_config.value["keypair_name"]
      monitoring                 = amazonec2_config.value["monitoring"]
      open_port                  = amazonec2_config.value["open_port"]
      private_address_only       = amazonec2_config.value["private_address_only"]
      region                     = amazonec2_config.value["region"]
      request_spot_instance      = amazonec2_config.value["request_spot_instance"]
      retries                    = amazonec2_config.value["retries"]
      root_size                  = amazonec2_config.value["root_size"]
      secret_key                 = amazonec2_config.value["secret_key"]
      security_group             = amazonec2_config.value["security_group"]
      security_group_readonly    = amazonec2_config.value["security_group_readonly"]
      session_token              = amazonec2_config.value["session_token"]
      spot_price                 = amazonec2_config.value["spot_price"]
      ssh_keypath                = amazonec2_config.value["ssh_keypath"]
      ssh_user                   = amazonec2_config.value["ssh_user"]
      subnet_id                  = amazonec2_config.value["subnet_id"]
      tags                       = amazonec2_config.value["tags"]
      use_ebs_optimized_instance = amazonec2_config.value["use_ebs_optimized_instance"]
      use_private_address        = amazonec2_config.value["use_private_address"]
      userdata                   = amazonec2_config.value["userdata"]
      volume_type                = amazonec2_config.value["volume_type"]
      vpc_id                     = amazonec2_config.value["vpc_id"]
      zone                       = amazonec2_config.value["zone"]
    }
  }

  dynamic "azure_config" {
    for_each = var.azure_config
    content {
      availability_set    = azure_config.value["availability_set"]
      client_id           = azure_config.value["client_id"]
      client_secret       = azure_config.value["client_secret"]
      custom_data         = azure_config.value["custom_data"]
      disk_size           = azure_config.value["disk_size"]
      dns                 = azure_config.value["dns"]
      docker_port         = azure_config.value["docker_port"]
      environment         = azure_config.value["environment"]
      fault_domain_count  = azure_config.value["fault_domain_count"]
      image               = azure_config.value["image"]
      location            = azure_config.value["location"]
      managed_disks       = azure_config.value["managed_disks"]
      no_public_ip        = azure_config.value["no_public_ip"]
      open_port           = azure_config.value["open_port"]
      private_ip_address  = azure_config.value["private_ip_address"]
      resource_group      = azure_config.value["resource_group"]
      size                = azure_config.value["size"]
      ssh_user            = azure_config.value["ssh_user"]
      static_public_ip    = azure_config.value["static_public_ip"]
      storage_type        = azure_config.value["storage_type"]
      subnet              = azure_config.value["subnet"]
      subnet_prefix       = azure_config.value["subnet_prefix"]
      subscription_id     = azure_config.value["subscription_id"]
      update_domain_count = azure_config.value["update_domain_count"]
      use_private_ip      = azure_config.value["use_private_ip"]
      vnet                = azure_config.value["vnet"]
    }
  }

  dynamic "digitalocean_config" {
    for_each = var.digitalocean_config
    content {
      access_token        = digitalocean_config.value["access_token"]
      backups             = digitalocean_config.value["backups"]
      image               = digitalocean_config.value["image"]
      ipv6                = digitalocean_config.value["ipv6"]
      monitoring          = digitalocean_config.value["monitoring"]
      private_networking  = digitalocean_config.value["private_networking"]
      region              = digitalocean_config.value["region"]
      size                = digitalocean_config.value["size"]
      ssh_key_fingerprint = digitalocean_config.value["ssh_key_fingerprint"]
      ssh_key_path        = digitalocean_config.value["ssh_key_path"]
      ssh_port            = digitalocean_config.value["ssh_port"]
      ssh_user            = digitalocean_config.value["ssh_user"]
      tags                = digitalocean_config.value["tags"]
      userdata            = digitalocean_config.value["userdata"]
    }
  }

  dynamic "opennebula_config" {
    for_each = var.opennebula_config
    content {
      b2d_size      = opennebula_config.value["b2d_size"]
      cpu           = opennebula_config.value["cpu"]
      dev_prefix    = opennebula_config.value["dev_prefix"]
      disable_vnc   = opennebula_config.value["disable_vnc"]
      disk_resize   = opennebula_config.value["disk_resize"]
      image_id      = opennebula_config.value["image_id"]
      image_name    = opennebula_config.value["image_name"]
      image_owner   = opennebula_config.value["image_owner"]
      memory        = opennebula_config.value["memory"]
      network_id    = opennebula_config.value["network_id"]
      network_name  = opennebula_config.value["network_name"]
      network_owner = opennebula_config.value["network_owner"]
      password      = opennebula_config.value["password"]
      ssh_user      = opennebula_config.value["ssh_user"]
      template_id   = opennebula_config.value["template_id"]
      template_name = opennebula_config.value["template_name"]
      user          = opennebula_config.value["user"]
      vcpu          = opennebula_config.value["vcpu"]
      xml_rpc_url   = opennebula_config.value["xml_rpc_url"]
    }
  }

  dynamic "openstack_config" {
    for_each = var.openstack_config
    content {
      active_timeout    = openstack_config.value["active_timeout"]
      auth_url          = openstack_config.value["auth_url"]
      availability_zone = openstack_config.value["availability_zone"]
      cacert            = openstack_config.value["cacert"]
      config_drive      = openstack_config.value["config_drive"]
      domain_id         = openstack_config.value["domain_id"]
      domain_name       = openstack_config.value["domain_name"]
      endpoint_type     = openstack_config.value["endpoint_type"]
      flavor_id         = openstack_config.value["flavor_id"]
      flavor_name       = openstack_config.value["flavor_name"]
      floating_ip_pool  = openstack_config.value["floating_ip_pool"]
      image_id          = openstack_config.value["image_id"]
      image_name        = openstack_config.value["image_name"]
      insecure          = openstack_config.value["insecure"]
      ip_version        = openstack_config.value["ip_version"]
      keypair_name      = openstack_config.value["keypair_name"]
      net_id            = openstack_config.value["net_id"]
      net_name          = openstack_config.value["net_name"]
      nova_network      = openstack_config.value["nova_network"]
      password          = openstack_config.value["password"]
      private_key_file  = openstack_config.value["private_key_file"]
      region            = openstack_config.value["region"]
      sec_groups        = openstack_config.value["sec_groups"]
      ssh_port          = openstack_config.value["ssh_port"]
      ssh_user          = openstack_config.value["ssh_user"]
      tenant_id         = openstack_config.value["tenant_id"]
      tenant_name       = openstack_config.value["tenant_name"]
      user_data_file    = openstack_config.value["user_data_file"]
      username          = openstack_config.value["username"]
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

  dynamic "vsphere_config" {
    for_each = var.vsphere_config
    content {
      boot2docker_url           = vsphere_config.value["boot2docker_url"]
      cfgparam                  = vsphere_config.value["cfgparam"]
      clone_from                = vsphere_config.value["clone_from"]
      cloud_config              = vsphere_config.value["cloud_config"]
      cloudinit                 = vsphere_config.value["cloudinit"]
      content_library           = vsphere_config.value["content_library"]
      cpu_count                 = vsphere_config.value["cpu_count"]
      creation_type             = vsphere_config.value["creation_type"]
      custom_attributes         = vsphere_config.value["custom_attributes"]
      datacenter                = vsphere_config.value["datacenter"]
      datastore                 = vsphere_config.value["datastore"]
      datastore_cluster         = vsphere_config.value["datastore_cluster"]
      disk_size                 = vsphere_config.value["disk_size"]
      folder                    = vsphere_config.value["folder"]
      hostsystem                = vsphere_config.value["hostsystem"]
      memory_size               = vsphere_config.value["memory_size"]
      network                   = vsphere_config.value["network"]
      password                  = vsphere_config.value["password"]
      pool                      = vsphere_config.value["pool"]
      ssh_password              = vsphere_config.value["ssh_password"]
      ssh_port                  = vsphere_config.value["ssh_port"]
      ssh_user                  = vsphere_config.value["ssh_user"]
      ssh_user_group            = vsphere_config.value["ssh_user_group"]
      tags                      = vsphere_config.value["tags"]
      username                  = vsphere_config.value["username"]
      vapp_ip_allocation_policy = vsphere_config.value["vapp_ip_allocation_policy"]
      vapp_ip_protocol          = vsphere_config.value["vapp_ip_protocol"]
      vapp_property             = vsphere_config.value["vapp_property"]
      vapp_transport            = vsphere_config.value["vapp_transport"]
      vcenter                   = vsphere_config.value["vcenter"]
      vcenter_port              = vsphere_config.value["vcenter_port"]
    }
  }

}

