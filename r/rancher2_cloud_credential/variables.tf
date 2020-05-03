variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "description" {
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

variable "amazonec2_credential_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      access_key = string
      secret_key = string
    }
  ))
  default = []
}

variable "azure_credential_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      client_id       = string
      client_secret   = string
      subscription_id = string
    }
  ))
  default = []
}

variable "digitalocean_credential_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      access_token = string
    }
  ))
  default = []
}

variable "linode_credential_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      token = string
    }
  ))
  default = []
}

variable "openstack_credential_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      password = string
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

variable "vsphere_credential_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      password     = string
      username     = string
      vcenter      = string
      vcenter_port = string
    }
  ))
  default = []
}

