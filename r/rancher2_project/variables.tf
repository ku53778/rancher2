variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "cluster_id" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enable_project_monitoring" {
  description = "(optional) - Enable built-in project monitoring"
  type        = bool
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

variable "pod_security_policy_template_id" {
  description = "(optional)"
  type        = string
  default     = null
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

variable "project_monitoring_input" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      answers = map(string)
      version = string
    }
  ))
  default = []
}

variable "resource_quota" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      namespace_default_limit = list(object(
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
      project_limit = list(object(
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

