variable "cluster_id" {
  description = "(required) - Cluster id to sync"
  type        = string
}

variable "node_pool_ids" {
  description = "(optional) - Cluster node pool ids"
  type        = list(string)
  default     = null
}

variable "synced" {
  description = "(optional)"
  type        = bool
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

