variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "cluster_id" {
  description = "(required)"
  type        = string
}

variable "control_plane" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "delete_not_ready_after_secs" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "etcd" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "hostname_prefix" {
  description = "(required)"
  type        = string
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

variable "node_template_id" {
  description = "(required)"
  type        = string
}

variable "quantity" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "worker" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "node_taints" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      effect     = string
      key        = string
      time_added = string
      value      = string
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

