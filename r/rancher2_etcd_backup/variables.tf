variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "cluster_id" {
  description = "(required)"
  type        = string
}

variable "filename" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "manual" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "namespace_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "backup_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled        = bool
      interval_hours = number
      retention      = number
      s3_backup_config = list(object(
        {
          access_key  = string
          bucket_name = string
          custom_ca   = string
          endpoint    = string
          folder      = string
          region      = string
          secret_key  = string
        }
      ))
      safe_timestamp = bool
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

