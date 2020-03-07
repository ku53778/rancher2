variable "annotations" {
  description = "(optional) - Annotations of the k8s namespace managed by rancher v2"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(optional) - Description of the k8s namespace managed by rancher v2"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - Labels of the k8s namespace managed by rancher v2"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Name of the k8s namespace managed by rancher v2"
  type        = string
}

variable "project_id" {
  description = "(required) - Project ID where k8s namespace belongs"
  type        = string
}

variable "wait_for_cluster" {
  description = "(optional) - Wait for cluster becomes active"
  type        = bool
  default     = null
}

variable "container_resource_limit" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      limits_cpu      = string
      limits_memory   = string
      requests_cpu    = string
      requests_memory = string
    }
  ))
  default = []
}

variable "resource_quota" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      limit = list(object(
        {
          config_maps              = string
          limits_cpu               = string
          limits_memory            = string
          persistent_volume_claims = string
          pods                     = string
          replication_controllers  = string
          requests_cpu             = string
          requests_memory          = string
          requests_storage         = string
          secrets                  = string
          services                 = string
          services_load_balancers  = string
          services_node_ports      = string
        }
      ))
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

