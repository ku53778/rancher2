variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "auth_certificate_authority" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "auth_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "cloud_credential_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "driver_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "engine_env" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "engine_insecure_registry" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "engine_install_url" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "engine_label" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "engine_opt" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "engine_registry_mirror" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "engine_storage_driver" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "use_internal_ip_address" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "amazonec2_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      access_key                 = string
      ami                        = string
      block_duration_minutes     = string
      device_name                = string
      endpoint                   = string
      iam_instance_profile       = string
      insecure_transport         = bool
      instance_type              = string
      keypair_name               = string
      monitoring                 = bool
      open_port                  = list(string)
      private_address_only       = bool
      region                     = string
      request_spot_instance      = bool
      retries                    = string
      root_size                  = string
      secret_key                 = string
      security_group             = list(string)
      security_group_readonly    = bool
      session_token              = string
      spot_price                 = string
      ssh_keypath                = string
      ssh_user                   = string
      subnet_id                  = string
      tags                       = string
      use_ebs_optimized_instance = bool
      use_private_address        = bool
      userdata                   = string
      volume_type                = string
      vpc_id                     = string
      zone                       = string
    }
  ))
  default = []
}

variable "azure_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      availability_set    = string
      client_id           = string
      client_secret       = string
      custom_data         = string
      disk_size           = string
      dns                 = string
      docker_port         = string
      environment         = string
      fault_domain_count  = string
      image               = string
      location            = string
      managed_disks       = bool
      no_public_ip        = bool
      open_port           = list(string)
      private_ip_address  = string
      resource_group      = string
      size                = string
      ssh_user            = string
      static_public_ip    = bool
      storage_type        = string
      subnet              = string
      subnet_prefix       = string
      subscription_id     = string
      update_domain_count = string
      use_private_ip      = bool
      vnet                = string
    }
  ))
  default = []
}

variable "digitalocean_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      access_token        = string
      backups             = bool
      image               = string
      ipv6                = bool
      monitoring          = bool
      private_networking  = bool
      region              = string
      size                = string
      ssh_key_fingerprint = string
      ssh_key_path        = string
      ssh_port            = string
      ssh_user            = string
      tags                = string
      userdata            = string
    }
  ))
  default = []
}

variable "linode_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      authorized_users  = string
      create_private_ip = bool
      docker_port       = string
      image             = string
      instance_type     = string
      label             = string
      region            = string
      root_pass         = string
      ssh_port          = string
      ssh_user          = string
      stackscript       = string
      stackscript_data  = string
      swap_size         = string
      tags              = string
      token             = string
      ua_prefix         = string
    }
  ))
  default = []
}

variable "opennebula_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      b2d_size      = string
      cpu           = string
      dev_prefix    = string
      disable_vnc   = bool
      disk_resize   = string
      image_id      = string
      image_name    = string
      image_owner   = string
      memory        = string
      network_id    = string
      network_name  = string
      network_owner = string
      password      = string
      ssh_user      = string
      template_id   = string
      template_name = string
      user          = string
      vcpu          = string
      xml_rpc_url   = string
    }
  ))
  default = []
}

variable "openstack_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      active_timeout    = string
      auth_url          = string
      availability_zone = string
      cacert            = string
      config_drive      = bool
      domain_id         = string
      domain_name       = string
      endpoint_type     = string
      flavor_id         = string
      flavor_name       = string
      floating_ip_pool  = string
      image_id          = string
      image_name        = string
      insecure          = bool
      ip_version        = string
      keypair_name      = string
      net_id            = string
      net_name          = string
      nova_network      = bool
      password          = string
      private_key_file  = string
      region            = string
      sec_groups        = string
      ssh_port          = string
      ssh_user          = string
      tenant_id         = string
      tenant_name       = string
      user_data_file    = string
      username          = string
    }
  ))
  default = []
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      update = string
    }
  ))
  default = []
}

variable "vsphere_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      boot2docker_url           = string
      cfgparam                  = list(string)
      clone_from                = string
      cloud_config              = string
      cloudinit                 = string
      content_library           = string
      cpu_count                 = string
      creation_type             = string
      custom_attributes         = list(string)
      datacenter                = string
      datastore                 = string
      datastore_cluster         = string
      disk_size                 = string
      folder                    = string
      hostsystem                = string
      memory_size               = string
      network                   = list(string)
      password                  = string
      pool                      = string
      ssh_password              = string
      ssh_port                  = string
      ssh_user                  = string
      ssh_user_group            = string
      tags                      = list(string)
      username                  = string
      vapp_ip_allocation_policy = string
      vapp_ip_protocol          = string
      vapp_property             = list(string)
      vapp_transport            = string
      vcenter                   = string
      vcenter_port              = string
    }
  ))
  default = []
}

