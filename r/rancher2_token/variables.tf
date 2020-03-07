variable "annotations" {
  description = "(optional) - Annotations of the token"
  type        = map(string)
  default     = null
}

variable "cluster_id" {
  description = "(optional) - Cluster ID for scoped token"
  type        = string
  default     = null
}

variable "description" {
  description = "(optional) - Token description"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - Labels of the token"
  type        = map(string)
  default     = null
}

variable "renew" {
  description = "(optional) - Renew expired or disabled token"
  type        = bool
  default     = null
}

variable "ttl" {
  description = "(optional) - Token time to live in seconds"
  type        = number
  default     = null
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

